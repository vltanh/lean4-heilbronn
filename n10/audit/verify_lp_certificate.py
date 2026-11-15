#!/usr/bin/env python3
"""Independent, always-on, standard-library verifier for n=10 LP covers.

All coordinates, determinants, affine rows, dual sums and rounding operations
use Python's unbounded integers. No NumPy, SciPy or primary checker is imported.
Each certificate is bound to an independently supplied deferred-root inventory.
Completeness of that inventory remains the global enumerator's obligation.
"""
from itertools import combinations, product
from pathlib import Path
import argparse
import gzip
import hashlib
import json
import sys


M, UNIT = 22, 2**20
SCALE = M*UNIT
NUM, DEN = 4653741958254, 50000000000000
TARGET = NUM*SCALE*SCALE
TRIPLES = tuple(combinations(range(10),3))
COORDINATES = tuple(tuple(j for i in tri for j in (2*i,2*i+1)) for tri in TRIPLES)
ROOT = Path(__file__).resolve().parents[2]


def need(condition,message):
    if not condition:
        raise ValueError(message)


def is_int(value):
    return type(value) is int


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def determinant(coordinates):
    x0,y0,x1,y1,x2,y2 = coordinates
    return x0*(y1-y2)+x1*(y2-y0)+x2*(y0-y1)


def extrema(low,high,indices):
    endpoints = [(low[k],high[k]) if low[k] != high[k] else (low[k],) for k in indices]
    values = (determinant(vertex) for vertex in product(*endpoints))
    first = next(values)
    minimum = maximum = first
    for value in values:
        minimum = min(minimum,value)
        maximum = max(maximum,value)
    return minimum,maximum


def root_key(anchors,cells):
    need(isinstance(anchors,list) and isinstance(cells,list), 'root lists')
    need(len(anchors) == 6 and len(cells) == 4, 'N root has six anchors and four free cells')
    need(all(is_int(a) and 0 <= a < 4*M+4 for a in anchors), 'anchor identifiers')
    need(all(is_int(c) and 0 <= c < M*M for c in cells), 'cell identifiers')
    need(cells == sorted(set(cells)), 'canonical distinct free cells')
    return tuple(anchors),tuple(cells)


def initial_box(anchors,cells):
    root_key(anchors,cells)
    rectangles = []
    for a in anchors:
        if a < M:
            rectangles.append((0,a,0,a+1))
        elif a < 2*M:
            x = a-M
            rectangles.append((x,0,x+1,0))
        elif a < 3*M:
            y = a-2*M
            rectangles.append((M,y,M,y+1))
        elif a < 4*M:
            x = a-3*M
            rectangles.append((x,M,x+1,M))
        else:
            x,y = ((0,0),(M,0),(M,M),(0,M))[a-4*M]
            rectangles.append((x,y,x,y))
    for c in cells:
        x,y = divmod(c,M)
        rectangles.append((x,y,x+1,y+1))
    return ([UNIT*r[k] for r in rectangles for k in (0,1)],
            [UNIT*r[k] for r in rectangles for k in (2,3)])


def valid_box(low,high):
    need(isinstance(low,list) and isinstance(high,list) and len(low) == len(high) == 20,
         'box dimensions')
    need(all(is_int(a) and is_int(b) and 0 <= a <= b <= SCALE for a,b in zip(low,high)),
         'nonempty square-box invariant')


def affine_rows(low,high):
    valid_box(low,high)
    centers = [a+b for a,b in zip(low,high)]
    widths = [b-a for a,b in zip(low,high)]
    negative_widths = [-w for w in widths]
    result = {}
    for index,indices in enumerate(COORDINATES):
        minimum,maximum = extrema(low,high,indices)
        positive = DEN*maximum > TARGET
        negative = -DEN*minimum > TARGET
        if not positive and not negative:
            return result,index
        if positive and negative:
            # Keeping no signed constraint is conservative if both branches
            # survive; no orientation is selected by numerical heuristics.
            continue
        orientation = 1 if positive else -1
        center = [centers[k] for k in indices]
        qminimum,qmaximum = extrema(negative_widths,widths,indices)
        remainder = qmaximum if orientation == 1 else -qminimum
        gradient = (center[3]-center[5],center[4]-center[2],
                    center[5]-center[1],center[0]-center[4],
                    center[1]-center[3],center[2]-center[0])
        coefficients = [0]*20
        for coordinate,derivative in zip(indices,gradient):
            coefficients[coordinate] = -DEN*orientation*derivative*widths[coordinate]
        bound = DEN*(orientation*determinant(center)+remainder)-4*TARGET
        # Retaining even redundant rows is sound and independent of the
        # generator's optional deletion of those rows before numerical LP.
        result[index] = coefficients,bound
    return result,None


def weighted_rows(rows,weights):
    need(isinstance(weights,list), 'dual weights must be a list')
    used = set()
    coefficients,bound = [0]*20,0
    for pair in weights:
        need(isinstance(pair,list) and len(pair) == 2, 'dual entry')
        index,weight = pair
        need(is_int(index) and index in rows, 'dual row not justified by box')
        need(is_int(weight) and weight >= 0, 'dual weight must be a nonnegative integer')
        need(index not in used, 'duplicate dual row')
        used.add(index)
        row,right = rows[index]
        for j in range(20):
            coefficients[j] += weight*row[j]
        bound += weight*right
    return coefficients,bound


def candidate_models():
    # Independent dyadic root isolation, rather than the generator's decimal
    # bracket. Unbounded integer polynomial evaluation prevents overflow.
    denominator = 2**50
    polynomial = lambda n:12*n**3-27*n*n*denominator+20*n*denominator**2-4*denominator**3
    lower,upper = 0,denominator//2
    need(polynomial(lower) < 0 < polynomial(upper), 'root isolation endpoints')
    while upper-lower > 1:
        middle = (lower+upper)//2
        value = polynomial(middle)
        need(value != 0, 'unexpected rational candidate root')
        if value < 0:
            lower = middle
        else:
            upper = middle
    def enclose(a,b,d):
        need(0 <= a <= b <= d, 'candidate enclosure')
        return a*SCALE//d,(b*SCALE+d-1)//d
    def complement(interval):
        return SCALE-interval[1],SCALE-interval[0]
    zero,one = (0,0),(SCALE,SCALE)
    g = enclose(lower,upper,denominator)
    halfg = enclose(lower,upper,2*denominator)
    square = denominator**2
    a = enclose(square-3*upper*denominator+2*lower**2,
                square-3*lower*denominator+2*upper**2,square)
    base = ((zero,a),(a,zero),(complement(halfg),zero),(one,halfg),
            (one,complement(a)),(complement(a),one),(halfg,one),
            (zero,complement(halfg)),(g,g),(complement(g),complement(g)))
    models = []
    for swap,flipx,flipy in product((False,True),repeat=3):
        model = []
        for x,y in base:
            if swap:
                x,y = y,x
            if flipx:
                x = complement(x)
            if flipy:
                y = complement(y)
            model.extend((x,y))
        models.append(model)
    return models


MODELS = candidate_models()


def locally_covered(low,high):
    valid_box(low,high)
    for model in MODELS:
        edges = []
        for p in range(10):
            edges.append([q for q in range(10) if all(
                2000*low[2*p+axis] >= 2000*model[2*q+axis][1]-SCALE and
                2000*high[2*p+axis] <= 2000*model[2*q+axis][0]+SCALE
                for axis in (0,1))])
        matched = [-1]*10
        def augment(p,seen):
            for q in edges[p]:
                if q in seen:
                    continue
                seen.add(q)
                if matched[q] == -1 or augment(matched[q],seen):
                    matched[q] = p
                    return True
            return False
        if all(augment(p,set()) for p in range(10)):
            return True
    return False


def verify(proof,expected_root):
    need(isinstance(proof,dict) and proof.get('schema') == 'heilbronn-n10-lp-cover-v1',
         'certificate schema')
    need((proof.get('scale'),proof.get('num'),proof.get('den')) == (SCALE,NUM,DEN),
         'certificate threshold/scale')
    need(proof.get('status') == 'COMPLETE' and 'unresolved' not in proof,
         'certificate not complete')
    actual_root = root_key(proof.get('anchors'),proof.get('free'))
    need(actual_root == expected_root, 'certificate root differs from externally expected root')
    low,high = initial_box(*[list(v) for v in expected_root])
    need(proof.get('initial_box') == {'lo':low,'hi':high}, 'initial continuous box mismatch')
    nodes = proof.get('nodes')
    need(isinstance(nodes,list) and nodes, 'missing proof nodes')
    records = {}
    for node in nodes:
        need(isinstance(node,dict) and is_int(node.get('id')) and node['id'] >= 0,
             'node identifier')
        need(node['id'] not in records, 'duplicate node identifier')
        records[node['id']] = node
    counts = dict.fromkeys(('local','area','farkas','empty','split','contractions','lp_bounds'),0)
    pending = [(0,low,high)]
    visited = set()
    while pending:
        identifier,low,high = pending.pop()
        need(identifier in records and identifier not in visited, 'missing/reused/cyclic proof node')
        visited.add(identifier)
        node = records[identifier]
        valid_box(low,high)
        need(node.get('lo') == low and node.get('hi') == high, 'proof-tree box hole or mismatch')
        steps = node.get('steps')
        need(isinstance(steps,list), 'contraction steps')
        for step in steps:
            need(isinstance(step,dict) and step.get('kind') == 'lp_bounds', 'contraction kind')
            rows,bad = affine_rows(low,high)
            need(bad is None, 'LP bound unnecessarily follows direct area rejection')
            changes = step.get('changes')
            need(isinstance(changes,list) and changes, 'empty/missing LP changes')
            newlow,newhigh = low.copy(),high.copy()
            bounds_seen = set()
            for change in changes:
                j,sg,K = change.get('axis'),change.get('sign'),change.get('K')
                need(is_int(j) and 0 <= j < 20 and is_int(sg) and sg in (-1,1), 'bound coordinate/sign')
                need(is_int(K) and K > 0, 'positive integer dual normalization')
                need((j,sg) not in bounds_seen, 'duplicate coordinate bound')
                bounds_seen.add((j,sg))
                coefficients,bound = weighted_rows(rows,change.get('weights'))
                coefficients[j] += K*sg
                numerator = -bound-sum(abs(v) for v in coefficients)
                center = K*(low[j]+high[j])
                width = high[j]-low[j]
                if sg == 1:
                    endpoint = (center+width*numerator)//(2*K)
                    need(endpoint > newlow[j], 'lower bound does not shrink')
                    newlow[j] = endpoint
                else:
                    endpoint = -((-center+width*numerator)//(2*K))
                    need(endpoint < newhigh[j], 'upper bound does not shrink')
                    newhigh[j] = endpoint
                need(is_int(change.get('endpoint')) and change['endpoint'] == endpoint,
                     'incorrect outward-rounded endpoint')
            counts['contractions'] += 1
            counts['lp_bounds'] += len(changes)
            low,high = newlow,newhigh
        need(('leaf' in node) != ('split' in node), 'node must be a leaf or a split')
        if 'leaf' in node:
            leaf = node['leaf']
            need(isinstance(leaf,dict), 'leaf record')
            kind = leaf.get('kind')
            need(kind in ('local','area','farkas','empty'), 'unresolved/unknown leaf kind')
            counts[kind] += 1
            if kind == 'empty':
                need(any(a > b for a,b in zip(low,high)), 'claimed empty box is nonempty')
                continue
            valid_box(low,high)
            if kind == 'local':
                need(locally_covered(low,high), 'local leaf outside all independently enclosed candidate neighborhoods')
            elif kind == 'area':
                triangle = leaf.get('triangle')
                need(is_int(triangle) and 0 <= triangle < len(TRIPLES), 'area triangle index')
                minimum,maximum = extrema(low,high,COORDINATES[triangle])
                need(DEN*max(-minimum,maximum) <= TARGET, 'area leaf exceeds exact threshold')
            else:
                rows,bad = affine_rows(low,high)
                need(bad is None, 'Farkas leaf unexpectedly area-infeasible')
                coefficients,bound = weighted_rows(rows,leaf.get('weights'))
                need(bound+sum(abs(v) for v in coefficients) < 0, 'Farkas contradiction not strict')
        else:
            valid_box(low,high)
            split = node['split']
            j,middle = split.get('axis'),split.get('mid')
            need(is_int(j) and 0 <= j < 20 and is_int(middle) and low[j] < middle < high[j],
                 'invalid closed-cover split')
            left,right = split.get('left'),split.get('right')
            need(is_int(left) and is_int(right) and left >= 0 and right >= 0 and left != right,
                 'split child identifiers')
            left_high,right_low = high.copy(),low.copy()
            left_high[j] = right_low[j] = middle
            pending.extend(((left,low.copy(),left_high),(right,right_low,high.copy())))
            counts['split'] += 1
    need(visited == set(records), 'unreachable certificate nodes')
    need(proof.get('counts') == counts, 'certificate counters differ from independently checked tree')
    return {'nodes':len(visited),'counts':counts}


def read_inventory(path):
    raw = path.read_bytes()
    text = (gzip.decompress(raw) if path.suffix == '.gz' else raw).decode()
    entries = set()
    for line in text.splitlines():
        if not line.strip() or line.startswith('family\t'):
            continue
        if '|' in line:
            left,right = line.split('|')
            prefix = list(map(int,left.split()))
            anchors,cells = prefix[1:],list(map(int,right.split()))
        else:
            columns = line.split('\t')
            need(len(columns) >= 4 and columns[0] == 'N', 'deferred inventory row format')
            anchors,cells = [int(x) for x in columns[2].split(',')],[int(x) for x in columns[3].split(',')]
        key = root_key(anchors,cells)
        need(key not in entries, 'duplicate root within one inventory')
        entries.add(key)
    return entries,{'path':str(path),'sha256':sha256(raw),'roots':len(entries)}


def checked_repository_path(value):
    need(isinstance(value,str), 'manifest path string')
    path = (ROOT/value).resolve()
    need(path.is_relative_to(ROOT.resolve()) and path.is_file(), 'missing/outside-repository manifest path')
    return path


def check_manifest(manifest_path,expected,certificate_records,table_path=None):
    raw = manifest_path.read_bytes()
    manifest_hash = sha256(raw)
    manifest = json.loads(raw)
    need(manifest.get('schema') == 'heilbronn-n10-deferred-lp-manifest-v1' and
         manifest.get('status') == 'ALL_LISTED_ROOTS_CERTIFIED', 'root manifest schema/status')
    need(is_int(manifest.get('count')) and manifest['count'] > 0, 'root manifest count')
    generator = manifest.get('generator',{})
    generator_path = checked_repository_path(generator.get('path'))
    need(sha256(generator_path.read_bytes()) == generator.get('sha256'), 'generator provenance hash')
    journal_entries = set()
    journal_paths = set()
    for record in manifest.get('journals',[]):
        path = checked_repository_path(record.get('path'))
        need(path not in journal_paths, 'duplicate declared inventory path')
        journal_paths.add(path)
        entries,receipt = read_inventory(path)
        need(receipt['sha256'] == record.get('sha256') and len(entries) == record.get('records'),
             'declared inventory hash/count mismatch')
        need(not journal_entries.intersection(entries), 'duplicate root across declared inventories')
        journal_entries.update(entries)
    need(journal_entries == expected, 'declared root inventories differ from externally supplied inventories')
    verified = {root_key(record['anchors'],record['free']):record for record in certificate_records}
    declared = set()
    table_rows = set()
    records = manifest.get('roots')
    need(isinstance(records,list) and len(records) == manifest['count'], 'manifest root list/count')
    for entry in records:
        key = root_key(entry.get('anchors'),entry.get('free'))
        need(key not in declared and key in verified, 'duplicate/unverified manifest root')
        declared.add(key)
        pattern = entry.get('pattern')
        need(is_int(pattern) and pattern >= 0, 'manifest pattern index')
        table_rows.add((pattern,*key[0],*key[1]))
        checked = verified[key]
        path = checked_repository_path(entry.get('certificate'))
        need(path == Path(checked['path']).resolve(), 'manifest certificate file differs from replayed file')
        need(entry.get('sha256') == checked['sha256'] == sha256(path.read_bytes()),
             'manifest certificate hash differs from replayed bytes')
        need(entry.get('status') == 'COMPLETE' and entry.get('nodes') == checked['nodes'] and
             entry.get('counts') == checked['counts'], 'manifest certificate status/counters')
    need(declared == expected == set(verified), 'manifest does not bind every expected and replayed root exactly once')
    table_receipt = None
    if table_path is not None:
        table_raw = table_path.read_bytes()
        lines = table_raw.decode().splitlines()
        need(lines, 'empty external root-lemma table')
        header = lines[0].split()
        need(header == ['N10_ROOT_LEMMAS_V1',str(M),str(NUM),str(DEN),str(len(declared)),manifest_hash],
             'root-lemma table header/domain/count/manifest hash mismatch')
        actual = set()
        for line in lines[1:]:
            need(line.strip(), 'empty root-lemma table record')
            row = tuple(map(int,line.split()))
            need(len(row) == 11 and row not in actual, 'duplicate/malformed root-lemma table row')
            actual.add(row)
        need(actual == table_rows, 'root-lemma lookup table differs from independently verified manifest roots')
        table_receipt = {'path':str(table_path),'sha256':sha256(table_raw),'rows':len(actual),
                         'manifest_sha256':manifest_hash}
    return {'path':str(manifest_path),'sha256':manifest_hash,'roots':len(declared),
            'root_lemma_table':table_receipt}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificates',type=Path,nargs='+')
    parser.add_argument('--roots',type=Path,action='append',required=True,
                        help='Externally generated .roots or independent deferred .tsv inventory; repeatable.')
    parser.add_argument('--require-all',action='store_true')
    parser.add_argument('--manifest',type=Path,
                        help='Also bind declared certificate/journal hashes, counts and generator provenance.')
    parser.add_argument('--root-lemmas',type=Path,
                        help='Require exact lookup-table equality with the independently verified manifest.')
    parser.add_argument('--output',type=Path)
    args = parser.parse_args()
    expected,inventory_records = set(),[]
    for path in args.roots:
        entries,record = read_inventory(path)
        expected.update(entries)
        inventory_records.append(record)
    need(expected, 'empty external root inventory')
    verified,certificate_records = set(),[]
    for path in args.certificates:
        raw = path.read_bytes()
        proof = json.loads(gzip.decompress(raw) if path.suffix == '.gz' else raw)
        key = root_key(proof.get('anchors'),proof.get('free'))
        need(key in expected, 'certificate root is absent from externally supplied inventory')
        need(key not in verified, 'duplicate certificate root')
        result = verify(proof,key)
        verified.add(key)
        certificate_records.append({'path':str(path),'sha256':sha256(raw),
                                    'anchors':list(key[0]),'free':list(key[1]),**result})
        print(f'INDEPENDENT_LP_CERTIFICATE_PASS file={path} nodes={result["nodes"]}',flush=True)
    remaining = sorted(expected-verified)
    need(not args.require_all or not remaining, f'{len(remaining)} deferred roots lack a verified certificate')
    need(args.root_lemmas is None or args.manifest is not None, 'root-lemma table requires a certificate manifest')
    manifest_receipt = check_manifest(args.manifest,expected,certificate_records,args.root_lemmas) if args.manifest else None
    dependencies = []
    for path in [ROOT/'n10'/'seed'/'LOCAL_THEOREM.md',ROOT/'n10'/'seed'/'verify_n10.py',
                 ROOT/'n10'/'seed'/'local_dual_data.py',
                 *[ROOT/'n10'/'seed'/'dual_data'/f'{i:02d}.b64' for i in range(8)]]:
        dependencies.append({'path':str(path.relative_to(ROOT)),'sha256':sha256(path.read_bytes())})
    report = {'schema':1,'status':'PASS','verifier':str(Path(__file__).relative_to(ROOT)),
              'verifier_sha256':sha256(Path(__file__).read_bytes()),
              'arithmetic':'Python arbitrary-precision integers; no numerical solver imported',
              'root_inventories':inventory_records,'certificates':certificate_records,
              'certificate_manifest':manifest_receipt,
              'expected_roots':len(expected),'verified_roots':len(verified),
              'all_inventory_roots_verified':not remaining,
              'unverified_roots':[{'anchors':list(a),'free':list(c)} for a,c in remaining],
              'local_theorem_dependencies':dependencies,
              'enumeration_completeness_verified':False}
    if args.output:
        args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(f'INDEPENDENT_LP_INVENTORY_PASS verified={len(verified)} expected={len(expected)} remaining={len(remaining)}')


if __name__ == '__main__':
    try:
        main()
    except (ValueError,KeyError,IndexError,TypeError,OSError) as error:
        print('INDEPENDENT_LP_FAIL_OR_INCOMPLETE: '+str(error),file=sys.stderr)
        sys.exit(2)
