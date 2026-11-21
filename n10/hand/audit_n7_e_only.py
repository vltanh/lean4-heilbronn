"""Independent exact identities and finite coverage for the E-only reduction."""
from itertools import product
from sympy import symbols, expand
from audit_n7_central_efg_cap import signs

a,b,c,d,e,f,h,g,z,x,y,u,v=symbols('a b c d e f h g z x y u v')
points={'A':(0,a),'B':(b,0),'C':(c,0),'D':(1,d),'E':(1,e),
        'F':(f,1),'H':(0,h),'G':(g,z),'O':(x,y),'P':(u,v)}
def area(word):
    p,q,r=(points[t] for t in word)
    return (q[0]-p[0])*(r[1]-p[1])-(q[1]-p[1])*(r[0]-p[0])
identities=[
    area('FGO')*area('GEP')-area('FGP')*area('GEO')-area('GEF')*area('GOP'),
    area('CEG')*area('EBP')-area('CEP')*area('EBG')-area('EBC')*area('EGP'),
    area('ABE')*area('BDG')-area('ABD')*area('BEG')-area('ABG')*area('BDE'),
    area('AGH')*area('AOP')-area('AGO')*area('AHP')+area('AGP')*area('AHO'),
    area('CEG')*area('AEP')-area('AEG')*area('CEP')+area('ACE')*area('EGP'),
    area('ACE')*area('EGO')-area('AEG')*area('CEO')+area('AEO')*area('CEG'),
    1-area('ABE')-area('AEF')-(f-b)*(e-a),
    area('ABE')*area('AGO')-area('ABG')*area('AEO')+area('ABO')*area('AEG'),
    area('GAE')*area('GOP')-area('GAO')*area('GEP')+area('GAP')*area('GEO'),
]
assert all(expand(p)==0 for p in identities)

# Exactly two cyclic sign changes for a line through a strict convex hull.
hull='HABCDEF';blocks=[]
for word in product((-1,1),repeat=7):
    if any(word[hull.index(t)]!=s for t,s in [('H',-1),('C',-1),('E',1),('F',-1)]):continue
    if sum(word[i]!=word[(i+1)%7] for i in range(7))==2:
        blocks.append(''.join(t for t,s in zip(hull,word) if s==1))
assert sorted(blocks)==['DE','E']

remaining=[]
for word in product((-1,1),repeat=3):
    ago,agp,dgp=word
    if agp==dgp==1 or ago==-1 and agp==1:continue
    remaining.append(''.join('+' if s==1 else '-' for s in word))
assert set(remaining)=={'---','--+','+--','+-+','++-'}

g_words=[]
for word in product(('-', '+'),repeat=4):
    if word[3]=='+' and signs(dict(zip(('ADG','AEG','BDG','BEG'),word))) is not None:g_words.append(''.join(word))
assert set(g_words)=={'--++','+-++','++++'}
print('PASS: nine independent determinant identities and three exhaustive sign catalogues.')
