"""Exact identities for N6_TOP_WEIGHTED_BARYCENTRICS.md."""
from fractions import Fraction as F
import sympy as sp


def main():
    M,ce,cf,cu,e,f,u,v,ee,ef=sp.symbols('M ce cf cu e f u v eta_E eta_F')
    eu=1-(ce+cf+cu)/M-ee-ef
    le,lf,lu=ce/M+ee,cf/M+ef,cu/M+eu
    r=le+lf*f+lu*u
    w=le*e+lf+lu*v
    left=[M*r-ce-(M-ce-cu)*f-cu*u,
          M-cf-cu+cf*f+cu*u-M*r,
          M*w-cf-(M-cf-cu)*e-cu*v,
          M-ce-cu+ce*e+cu*v-M*w]
    right=[M*((1-f)*ee+(u-f)*eu),
           M*((1-f)*ef+(1-u)*eu),
           M*((1-e)*ef+(v-e)*eu),
           M*((1-e)*ee+(1-v)*eu)]
    assert all(sp.cancel(x-y)==0 for x,y in zip(left,right))
    s=F(93,1000);alpha=F(1037,10000)
    d0=(1-alpha)**2; m0=d0/s
    assert d0==F(80335369,100000000)
    assert m0==F(80335369,9300000)<9
    assert 9*s-d0==F(3364631,100000000)>0
    print('PASS four weighted barycentric identities and exact uniform top-container cap')


if __name__=='__main__':main()
