#!/usr/bin/env python3
"""Independent arbitrary-integer interval replay of corner-family root journals.

This verifies every listed continuous box. Completeness of root enumeration
must be established separately. It uses direct determinant expansion at all
rectangle vertices and synchronous (Jacobi) coordinate updates, rather than
the original C++ vertex shortcut and in-place contraction updates.
"""
from itertools import combinations, product
from pathlib import Path
import argparse
import gzip
import hashlib
import json
import time


M, F = 22, 2**20
S = M*F
NUM, DEN = 4653, 50000
TARGET = NUM*S*S
TRIPLES = tuple(combinations(range(10),3))
INDICES = tuple(tuple(j for i in tri for j in (2*i,2*i+1)) for tri in TRIPLES)


def need(ok,message):
    if not ok:
        raise ValueError(message)


def determinant(p):
    x0,y0,x1,y1,x2,y2 = p
    return x0*y1+x1*y2+x2*y0-x0*y2-x1*y0-x2*y1


def rectangle(identifier,anchor):
    if not anchor:
        need(0 <= identifier < M*M,'free-cell index')
        x,y = divmod(identifier,M)
        return (x,y),(x+1,y+1)
    need(0 <= identifier < 4*M+4,'anchor index')
    side,offset = divmod(identifier,M)
    if side == 0:
        return (0,offset),(0,offset+1)
    if side == 1:
        return (offset,0),(offset+1,0)
    if side == 2:
        return (M,offset),(M,offset+1)
    if side == 3:
        return (offset,M),(offset+1,M)
    point = ((0,0),(M,0),(M,M),(0,M))[identifier-4*M]
    return point,point


def initial_box(anchors,free):
    need(len(anchors)+len(free) == 10,'ten-point root')
    need(len(set(free)) == len(free) and free == sorted(free),'canonical distinct free cells')
    lower,upper = [],[]
    for identifier,anchor in [(i,True) for i in anchors]+[(i,False) for i in free]:
        lo,hi = rectangle(identifier,anchor)
        lower.extend(c*F for c in lo)
        upper.extend(c*F for c in hi)
    return lower,upper


def contract(lower,upper,order,rounds=8):
    for _ in range(rounds):
        changed = False
        for indices in order:
            lo = [lower[i] for i in indices]
            hi = [upper[i] for i in indices]
            active = [i for i in range(6) if lo[i] < hi[i]]
            need(all(0 <= a <= b <= S for a,b in zip(lo,hi)),'interval invariant')
            faces = [[0,0] for _ in active]
            maximum = 0
            for bits in product((0,1),repeat=len(active)):
                values = lo.copy()
                for coordinate,bit in zip(active,bits):
                    if bit:
                        values[coordinate] = hi[coordinate]
                absolute = abs(determinant(values))
                if absolute > maximum:
                    maximum = absolute
                for j,bit in enumerate(bits):
                    if absolute > faces[j][bit]:
                        faces[j][bit] = absolute
            if DEN*maximum <= TARGET:
                return True
            # All proposals are calculated against the same old triangle box.
            updates = []
            for coordinate,(face0,face1) in zip(active,faces):
                low,high = DEN*face0,DEN*face1
                width = hi[coordinate]-lo[coordinate]
                left,right = lo[coordinate],hi[coordinate]
                if low < TARGET:
                    need(high > TARGET,'lower contraction slope')
                    left += (TARGET-low)*width//(high-low)
                elif high < TARGET:
                    need(low > TARGET,'upper contraction slope')
                    right -= (TARGET-high)*width//(low-high)
                updates.append((indices[coordinate],left,right))
            for index,left,right in updates:
                if lower[index] != left or upper[index] != right:
                    changed = True
                lower[index],upper[index] = left,right
        if not changed:
            return False
    return False


def replay(lower,upper,budget):
    midpoint = [a+b for a,b in zip(lower,upper)]
    order = sorted(INDICES,key=lambda indices:abs(determinant([midpoint[i] for i in indices])))
    stack = [(lower,upper)]
    nodes = 0
    while stack:
        nodes += 1
        need(nodes <= budget,'INCOMPLETE: replay budget exhausted')
        lo,hi = stack.pop()
        if contract(lo,hi,order):
            continue
        index = max(range(20),key=lambda i:hi[i]-lo[i])
        need(hi[index]-lo[index] > 1,'INCOMPLETE: unresolved finest box')
        middle = (lo[index]+hi[index])//2
        upper_left,lower_right = hi.copy(),lo.copy()
        upper_left[index] = lower_right[index] = middle
        stack.extend(((lo,upper_left),(lower_right,hi)))
    return nodes


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('journal',type=Path)
    parser.add_argument('--family',choices=('III','II','C2','C1'),required=True)
    parser.add_argument('--output',type=Path)
    parser.add_argument('--root-budget',type=int,default=1000000)
    parser.add_argument('--max-roots',type=int)
    args = parser.parse_args()
    stored = args.journal.read_bytes()
    raw = gzip.decompress(stored) if args.journal.suffix == '.gz' else stored
    processed = nodes = 0
    started = time.monotonic()
    previous = None
    for text in raw.decode().splitlines():
        left,right = text.split('|')
        prefix = list(map(int,left.split()))
        pattern,anchors = prefix[0],prefix[1:]
        free = list(map(int,right.split()))
        expected = {'III':3,'II':4,'C2':6,'C1':5}[args.family]
        need(len(anchors) == expected,'wrong family anchor count')
        key = (pattern,tuple(free))
        need(previous is None or key > previous,'noncanonical/duplicate journal record')
        previous = key
        nodes += replay(*initial_box(anchors,free),args.root_budget)
        processed += 1
        if processed%1000 == 0:
            print(f'ARBITRARY_INTEGER_REPLAY_PROGRESS roots={processed} nodes={nodes} seconds={time.monotonic()-started:.3f}',flush=True)
        if args.max_roots is not None and processed >= args.max_roots:
            break
    total = len(raw.decode().splitlines())
    complete = processed == total
    report = {'schema':1,'status':'PASS' if complete else 'PARTIAL',
              'family':args.family,'journal':str(args.journal),
              'journal_sha256':hashlib.sha256(raw).hexdigest(),
              'stored_file_sha256':hashlib.sha256(stored).hexdigest(),
              'arithmetic':'Python arbitrary-precision integers',
              'method':'direct determinant vertices, synchronous face updates, closed bisection',
              'roots':processed,'journal_roots':total,'interval_nodes':nodes,
              'all_listed_roots_verified':complete,
              'enumeration_completeness_verified':False,
              'seconds':time.monotonic()-started}
    if args.output:
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))


if __name__ == '__main__':
    main()
