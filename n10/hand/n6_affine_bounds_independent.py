"""Independent exact affine-area certificate reconstruction.

The caller verifies actual geometry and all ordinary scalar relations first,
and supplies an immutable-bound resolver enforcing ancestry and row order.
No optimizer, discovery module, or companion reader is imported here.
"""
from fractions import Fraction as F

def require(ok, message='invalid affine certificate'):
    if not ok:raise AssertionError(message)
def clean(coefficients):return {t:F(v) for t,v in coefficients.items() if F(v)}
def combination(*terms):
    constant=F();coefficients={}
    for multiplier,(c,co) in terms:
        constant+=multiplier*c
        for t,v in co.items():coefficients[t]=coefficients.get(t,F())+multiplier*v
    return constant,clean(coefficients)
def scalar(c=0,**co):return F(c),clean(co)
def down(v):return F(v.numerator*10**6//v.denominator,10**6)
def up(v):return -down(-v)
def rational(x):return F(*map(int,x)) if isinstance(x,list) else F(x)

def audit_certificate(certificate, relation, endpoint, actual_sign, canonical):
    """Verify literal factors and sum; return its exact target or ceiling.

    relation(id) returns a geometry-verified normalized relation dictionary.
    endpoint(object) checks its triangle/side/value/ref and returns its value.
    """
    def bound(obj,triangle=None,side=None):
        if triangle is not None:require(obj['triangle']==triangle,'wrong bound triangle')
        if side is not None:require(obj['side']==side,'wrong bound side')
        value=F(endpoint(obj));require(value==F(obj['value']),'wrong immutable value')
        return value
    def envelope(product0):
        x,y=product0['X'],product0['Y'];typ=product0['type'];choice=product0['choice']
        require(typ in ('upper','lower') and choice in (0,1))
        sides=('hi','lo') if typ=='upper' and choice==0 else ('lo','hi') if typ=='upper' else ('lo','lo') if choice==0 else ('hi','hi')
        require(len(product0['bounds'])==2)
        bx,by=(bound(q,t,side) for q,t,side in zip(product0['bounds'],(x,y),sides))
        # The envelope is bx*Y + by*X - bx*by in all four cases.
        return combination((1,(-bx*by,{})),(by,scalar(**{x:1})),(bx,scalar(**{y:1})))
    def reconstruct(factor):
        origin=factor['origin'];kind=origin['kind']
        if kind=='bound':
            triangle=origin['triangle'];side=origin['direction'];require(side in ('lo','hi'))
            value=bound(origin['bound'],triangle,side)
            return scalar(-value if side=='lo' else value,**{triangle:1 if side=='lo' else -1})
        if kind=='four_point':
            aa,bb,cc,dd=origin['vertices'];direction=origin['direction'];require(direction in (-1,1) and len(set(origin['vertices']))==4)
            words=[aa+bb+cc,aa+cc+dd,aa+bb+dd,bb+cc+dd];signs=[1,1,-1,-1];co={}
            for word,sign in zip(words,signs):
                v=actual_sign(word);require(v in (-1,1));t=canonical(word);co[t]=co.get(t,F())+direction*sign*v
            return F(),clean(co)
        if kind in ('fan','quad'):
            r=relation(origin['relation']);require(r['kind']==kind)
            if kind=='fan':
                direction=origin['direction'];require(direction in (-1,1));return combination((direction,scalar(**{r['outer']:1})),*[(-direction,scalar(**{t:1})) for t in r['parts']])
            return -rational(r['floor']),clean({t:1 for t in r['parts']})
        if kind=='product_linear_envelope':
            r=relation(origin['relation']);require(r['kind']=='plu');orientation=origin['orientation'];require(orientation in (-1,1))
            expected=[(tuple(sorted(r['iso'])),orientation)]+[(tuple(sorted(pair)),-orientation) for pair in r['rhs']]
            products=origin['products'];require(len(products)==3)
            require(sorted((tuple(sorted((p['X'],p['Y']))),p['sign']) for p in products)==sorted(expected),'wrong signed product identity')
            terms=[]
            for p in products:
                sign=p['sign'];require(p['type']==('upper' if sign==1 else 'lower'))
                terms.append((sign,envelope(p)))
            return combination(*terms)
        if kind=='support_envelope':
            r=relation(origin['relation']);require(r['kind']=='support');p=origin['product'];require((p['X'],p['Y'],p['type'],p['sign'])==(r['X'],r['Y'],'upper',1))
            k=rational(r['constant'])
            return combination((1,envelope(p)),(-k,scalar(**{r['X']:1})),(k,scalar(**{r['Z']:1})))
        if kind=='bary_affine':
            r=relation(origin['relation']);require(r['kind']=='bary');direction=origin['direction'];require(direction in (-1,1));sources=origin['sources'];require(len(sources)==4+sum(v['name'] is not None for v in r['vertices']))
            cap=bound(sources[0],r['outer'],'hi');require(cap>0);floors=[bound(source,triangle,'lo') for source,triangle in zip(sources[1:4],r['fans'])]
            residual=cap-sum(floors);require(residual>=0 and all(v>=0 for v in floors))
            terms=[];values=[];i=4
            if r['target'] is not None:
                require(r['targetSign'] in (-1,1));terms.append((direction*cap*r['targetSign'],scalar(**{r['target']:1})))
            else:require(r['targetSign']==0)
            for floor,vertex in zip(floors,r['vertices']):
                t=vertex['name'];sign=vertex['sign']
                if t is None:require(sign==0);values.append(F());continue
                require(sign in (-1,1));side='lo' if direction*sign==1 else 'hi'
                value=bound(sources[i],t,side);i+=1;values.append(sign*value)
                terms.append((-direction*floor*sign,scalar(**{t:1})))
            extreme=min(values) if direction==1 else max(values)
            terms.append((1,scalar(-direction*residual*extreme)))
            return combination(*terms)
        raise AssertionError('unknown affine origin '+kind)
    factors={};origins={}
    for factor in certificate['factors']:
        index=factor['index'];require(index not in factors)
        expected=reconstruct(factor);require(expected==(F(factor['constant']),clean(factor['coefficients'])),'incorrect expanded affine factor')
        factors[index]=expected;origins[index]=factor['origin']['kind']
    weights=certificate['weights'];require(len({i for i,w in weights})==len(weights) and {i for i,w in weights}==set(factors))
    require(all(type(w) is int and w>0 for i,w in weights),'nonpositive affine weight')
    total=combination(*[(weight,factors[index]) for index,weight in weights])
    require(total==(F(certificate['sum']['constant']),clean(certificate['sum']['coefficients'])),'wrong weighted affine sum')
    constant,coefficients=total;box=certificate['box'];target=certificate.get('target')
    require(set(coefficients)-{target}<=set(box),'missing affine ceiling endpoint')
    endpoints={}
    for t,pair in box.items():
        endpoints[t]=(bound(pair['lo'],t,'lo'),bound(pair['hi'],t,'hi'))
    upper=constant+sum(co*endpoints[t][int(co>0)] for t,co in coefficients.items() if t!=target)
    if target is None:
        require(upper==F(certificate['upper']) and upper<0,'invalid affine terminal ceiling')
        result=upper
    else:
        require(target in coefficients and coefficients[target]!=0)
        direction='lo' if coefficients[target]>0 else 'hi';raw=-upper/coefficients[target]
        value=down(raw) if direction=='lo' else up(raw)
        require(direction==certificate['direction'] and raw==F(certificate['raw']) and value==F(certificate['value']),'wrong derived affine bound')
        result=value
    return result,{'factors':len(factors),'weights':len(weights),'origins':origins}
