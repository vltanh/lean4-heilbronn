"""Exact identities for the stated broader CEF2 AE-transfer implication."""
import N7_CENTRAL_COMPLETION_E_ONLY_check as C

a,b,cc,d,e,f,g,h,z,x,y,u,v=map(C.v,range(13))
one=C.c(1);checks=0
def equal(p,q):
    global checks
    assert p==q
    checks+=1

equal(C.det('CEH'),C.add(C.mul(h,C.sub(one,cc)),C.mul(cc,e)))
equal(C.det('CEA'),C.add(C.mul(a,C.sub(one,cc)),C.mul(cc,e)))
equal(C.det('CEB'),C.mul(e,C.sub(cc,b)))
equal(C.det('ACH'),C.mul(cc,C.sub(h,a)))
equal(C.det('ACE'),C.add(C.mul(a,C.sub(one,cc)),C.mul(cc,e)))
equal(C.det('ACF'),C.add(C.mul(cc,C.sub(one,a)),C.mul(a,f)))
aO=C.sc(C.det('ECO'),-1);aP=C.sc(C.det('ECP'),-1)
fO=C.det('EBO');fP=C.det('EBP')
equal(C.sub(C.mul(aO,fP),C.mul(aP,fO)),C.mul(C.det('BCE'),C.det('EOP')))
print(checks,'exact affine and capacity-ray identities passed')
