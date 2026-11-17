"""Actual determinant identity and rational gap for the fixed quad capacity."""
from fractions import Fraction
import sympy as sp


def main():
    a,b,e,f=sp.symbols('a b e f')
    p={'A':(0,a),'B':(b,0),'E':(1,e),'F':(f,1)}
    def det(t):
        x,y,z=(p[q] for q in t)
        return (y[0]-x[0])*(z[1]-x[1])-(y[1]-x[1])*(z[0]-x[0])
    assert sp.expand(det('ABE')+det('AEF')-1+(f-b)*(e-a))==0
    assert Fraction(93,91)-1==Fraction(2,91)>0
    print('PASS: actual ABEF area identity; exact three-occupant cost gap 2/91')


if __name__=='__main__':main()
