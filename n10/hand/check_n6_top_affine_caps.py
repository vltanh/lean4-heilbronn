"""Independent determinant identities for the top-cap affine bounds."""
import sympy as sp
e,f,x,y,u,v=sp.symbols('e f x y u v')
points={'E':(1,e),'F':(f,1),'U':(x,y),'V':(u,v)}
def D(word):
    a,b,c=[points[ch] for ch in word]
    return sp.expand((b[0]-a[0])*(c[1]-a[1])-(b[1]-a[1])*(c[0]-a[0]))
assert sp.expand(D('EUV')-((y-e)*(1-u)-(1-x)*(v-e)))==0
assert sp.expand(D('FUV')-((1-y)*(u-f)-(x-f)*(1-v)))==0
assert sp.expand(-D('EFU')-((1-e)*(x-f)-(1-f)*(1-y)))==0
assert sp.expand(-D('EFU')-((1-f)*(y-e)-(1-e)*(1-x)))==0
# The discarded products and the remaining coefficient deficits are
# products of the nonnegative cap/square coordinates listed in the note.
assert sp.expand((y-e)-D('EUV')-((y-e)*u+(1-x)*(v-e)))==0
assert sp.expand((1-u)-D('EUV')-((1-u)*(1-y+e)+(1-x)*(v-e)))==0
assert sp.expand((1-y)-D('FUV')-((1-y)*(1-u+f)+(x-f)*(1-v)))==0
assert sp.expand((u-f)-D('FUV')-((u-f)*y+(x-f)*(1-v)))==0
print('PASS: top-cap contact/apex affine bounds, all determinant identities and nonnegative deficits')
