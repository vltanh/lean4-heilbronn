"""Exact scalar checks for N7_ONE_LOWER_SETUP.md."""
from fractions import Fraction as F
s=F(93,1000);K=F(149,20);eta=F(93,790);ell=F(7347,69700);fmax=1-ell;B=1-4*s/(1-s);C=F(883,1000);h0=4*s/fmax
r=lambda x:F(str(x))
assert (1-C)*(1-s-eta)<s
assert s/(C-ell)>r('.119')
assert 1-s/B<r('.843')
assert F(29,5)*s==r('.5394')
assert F(29,5)*s/fmax>r('.602')
assert 1-s-s/(1-r('.5394'))<r('.706')
assert (F(1411,1000))**2<2
assert F(2911,500)*s>r('.541')
assert F(2911,500)*s/C>r('.613')
assert K*s>r('.692') and K*s/C>r('.784')
assert 1-s-s/(1-r('.692'))<r('.606')
assert 3*eta>r('.353')
assert s/(1-r('.353'))>r('.143')
assert s/(C-r('.143'))>r('.125')
assert r('.125')+s/(1-r('.692'))>r('.426')
assert C-(C*r('.125')+s)/r('.843')<r('.642')
assert r('.843')-(r('.843')*r('.143')+s)/C<r('.602')
assert -r('.336')**2+r('1.069')*r('.336')-r('.246357')<0
assert r('1.069')-2*r('.336')>0
assert s/(C-r('.336'))>r('.170')
assert s/(1-r('.170'))>r('.112')
assert 1-3*s/C<r('.685')
assert r('.170')+s/(1-r('.692'))>r('.471')
assert B*(1-r('.170'))-s<r('.397')
assert 1-(r('.112')+s)/B<r('.653')
assert 1-s-s/(1-r('.541'))<r('.705')
assert C*(1-r('.119'))-s<r('.685')
zu=lambda amin:1-s*(2-amin)/(C*(1-amin))
assert zu(r('.119'))<r('.776')
assert C*r('.139')*(1-r('.139'))-s*(1+r('.139'))<0
assert C*(1-2*r('.139'))-s>0
assert s/(1-r('.139'))>r('.108')
assert s/(C-r('.108'))==r('.120')
xmin=lambda bmin:s*(C+bmin)/(C-bmin)
ymin=lambda amin:s*(1+amin)/(C*(1-amin))
assert xmin(r('.108'))>r('.118')
assert ymin(r('.139'))>r('.139')
assert zu(r('.139'))<r('.773')
assert r('.123')*(C-r('.123'))-s*(C+r('.123'))<0
assert C-2*r('.123')-s>0
assert s/(C-r('.123'))>r('.122')
assert xmin(r('.123'))>r('.123')
assert ymin(r('.122'))>r('.134')
assert zu(r('.122'))<r('.775')
assert 1-s/C==F(790,883)
for cap,other,cost,gap in [
 (C,F(403,1000),s,-F(147,1000000)),
 (C,F(17,100),3*s,-F(341,250000)),
 ((1-s)*fmax,F(357,1000),s,-F(10679448692759,4858090000000000))]:
 assert (cap-other-cost)**2-4*other*cost==gap<0
assert 1-h0<K*s
print('PASS: all four rational boxes, fixed cap comparisons and new affine constants')
