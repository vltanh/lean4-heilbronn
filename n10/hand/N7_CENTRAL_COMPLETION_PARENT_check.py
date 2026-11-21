"""Exact threshold and finite coverage checks for the written N7 assembly.

This checks catalogue bookkeeping and manuscript links, not the arithmetic
proofs already supplied by the separate source-complete table readers.
"""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import re

HERE=Path(__file__).resolve().parent


def main():
    text=(HERE/'N7_CENTRAL_COMPLETION_PARENT.md').read_text()
    s=Q(93,1000);r=Q(631,2000)
    assert 12*r**3-27*r**2+20*r-4==-Q(1454727,2000000000)
    assert r*r*(Q(5,4)-r)-s==Q(162909,8000000000)>0
    assert Q(63,200)<r<Q(79,250)<Q(1,3)
    assert 12*s>1

    def section(a,b):return text.split('## '+str(a)+'. ',1)[1].split('## '+str(b)+'. ',1)[0]
    def counts(part):
        rows=re.findall(r'^\| \((\d),(\d),(\d)\) \|',part,re.M)
        result=[tuple(map(int,q))for q in rows]
        assert len(result)==len(set(result))==5
        return set(result)
    exterior={(l,r,3-l-r)for l in range(3)for r in range(l+1)if l+r<=3}
    interior={(k,j,q)for k in range(3)for j in range(3)for q in range(2)if k+j+q==3}
    assert counts(section(2,3))==exterior
    assert counts(section(4,5))==interior

    octagon='ABCDEFGH'
    arcs={n:{''.join(octagon[(i+j)%8]for j in range(n))for i in range(8)}for n in(1,2,3)}
    assert all(len(group)==8 for group in arcs.values())
    third=section(3,4)
    printed_three={'FGH'}
    line=next(q for q in third.splitlines()if q.startswith('| A,B,C;'))
    printed_three.update(q.replace(',','').replace(' ','')for q in line.split('|')[1].strip().split(';'))
    assert printed_three==arcs[3]
    pairs={frozenset((''.join(sorted(octagon[i]+octagon[(i+1)%8])),
                     ''.join(sorted(octagon[(i+4)%8]+octagon[(i+5)%8]))))for i in range(4)}
    printed_pairs=set()
    for line in third.splitlines():
        m=re.match(r'^\| ([A-H]{2}) / ([A-H]{2}) \|',line)
        if m:printed_pairs.add(frozenset(''.join(sorted(q))for q in m.groups()))
    assert len(printed_pairs)==4 and printed_pairs==pairs

    fifth=section(5,6)
    words=re.findall(r'^\| ([+-]) \| ([+-]) \| ([+-]) \|',fifth,re.M)
    assert len(words)==len(set(words))==8 and set(words)==set(product('+-',repeat=3))
    for word in words:
        signs=('-',)+word
        changes=sum(signs[i]!=signs[(i+1)%4]for i in range(4))
        assert changes==(0 if word==('-','-','-')else 4 if word==('+','-','+')else 2)
    lower={(a,b)for a,b in product('+-',repeat=2)if(a,b)!=('-','-')}
    assert lower=={('-','+'),('+','-'),('+','+')}
    assert all(q in fifth for q in('ACG<0,HBG>0','ACG>0,HBG<0','ac>=bh','ac<=bh'))

    links=re.findall(r'\]\(([^)]+)\)',text)
    assert links and all((HERE/q).is_file()for q in links)
    for stem,leaves,splits,cells,words in(
        ('C',51,39,{'CA','CB'},{'C'}),
        ('CA_UPPER',95,93,{'CA'},{'CE','EF'}),
        ('CB_UPPER',84,82,{'CB'},{'CE','EF'})):
        raw=(HERE/f'N7_CENTRAL_COMPLETION_{stem}_TABLES/INDEX.md').read_text()
        blocks=re.findall(r'```json\n(.*?)\n```',raw,re.S);assert len(blocks)==1
        packet=json.loads(blocks[0])
        assert len(packet['leaves'])==leaves and len(packet['splits'])==splits
        assert{p['cell']for p in packet['leaves']}==cells
        assert{p['word']for p in packet['leaves']}==words
    print('PASS: exact threshold; 5 exterior counts; 5 interior counts; all 24 short octagon arcs;')
    print('4 opposite edge pairs; all 8 central words; lower-cell cover; all manuscript links;')
    print('new literal source domains C(51), CA CE/EF(95), CB CE/EF(84).')


if __name__=='__main__':main()
