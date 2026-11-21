"""Independent affine-area factors in the remaining C1 contact cases."""
from fractions import Fraction as F
from n6_affine_bounds_independent import combination, scalar, clean, down, up


def reconstruct(certificate,relations,records):
    def endpoint(obj,triangle=None,side=None):
        t,d=obj['triangle'],obj['side'];assert d in ('lo','hi')
        assert triangle is None or t==triangle
        assert side is None or d==side
        row=records[obj['ref']]
        assert (row['triangle'],row['side'],F(row['value']))==(t,d,F(obj['value']))
        return F(row['value'])
    def envelope(X,Y,kind,choice,sources):
        assert kind in ('upper','lower') and choice in (0,1) and len(sources)==2
        sides=(('hi','lo') if choice==0 else ('lo','hi')) if kind=='upper' else (('lo','lo') if choice==0 else ('hi','hi'))
        a,b=[endpoint(obj,t,side) for obj,t,side in zip(sources,(X,Y),sides)]
        return combination((1,scalar(-a*b)),(a,scalar(**{Y:1})),(b,scalar(**{X:1})))
    factors={}
    for factor in certificate['factors']:
        origin=factor['origin'];kind=origin['kind'];index=factor['index']
        assert type(index) is int and index not in factors
        if kind=='bound':
            source=origin['source'];v=endpoint(source);side=source['side'];t=source['triangle']
            result=scalar(-v if side=='lo' else v,**{t:1 if side=='lo' else -1})
        else:
            relation=relations[origin['relation']]
            if kind=='fan':
                assert relation[0]=='fan';direction=origin['direction'];assert direction in (-1,1)
                result=combination((direction,scalar(**{relation[1]:1})),*[(-direction,scalar(**{t:1})) for t in relation[2:]])
            elif kind=='quad':
                assert relation[0]=='quad'
                result=combination((1,scalar(-F(relation[3]))),*[(1,scalar(**{t:1})) for t in relation[1:3]])
            elif kind=='linear':
                assert relation[0]=='linear';result=(-F(relation[2]),clean(relation[1]))
            elif kind=='product_linear_envelope':
                assert relation[0] in ('plu','balance');orientation=origin['orientation'];assert orientation in (-1,1)
                if relation[0]=='plu':
                    terms=[(1,*relation[1:3]),(-1,*relation[3:5]),(-1,*relation[5:7])]
                else:terms=relation[1]
                expected=sorted((orientation*sg,tuple(sorted((X,Y)))) for sg,X,Y in terms)
                printed=origin['products'];assert len(printed)==len(terms)
                assert sorted((p['sign'],tuple(sorted((p['X'],p['Y'])))) for p in printed)==expected
                pieces=[]
                for p in printed:
                    sign=p['sign'];assert sign in (-1,1) and p['type']==('upper' if sign==1 else 'lower')
                    pieces.append((sign,envelope(p['X'],p['Y'],p['type'],p['choice'],p['bounds'])))
                result=combination(*pieces)
            elif kind=='support_envelope':
                assert relation[0]=='support';_,X,Y,Z,rate=relation;rate=F(rate)
                result=combination((1,envelope(X,Y,'upper',origin['choice'],origin['bounds'])),
                                   (-rate,scalar(**{X:1})),(rate,scalar(**{Z:1})))
            else:
                assert kind=='affine_bary' and relation[0]=='bary'
                _,target,vertices,outer,fans=relation;side=origin['side'];assert side in ('lo','hi')
                direction=1 if side=='lo' else -1
                N=endpoint(origin['outer'],outer,'hi');assert N>0 and len(origin['fans'])==3 and len(origin['vertices'])==3
                floors=[endpoint(obj,t,'lo') for obj,t in zip(origin['fans'],fans)]
                residual=N-sum(floors);assert residual>=0 and all(a>=0 for a in floors)
                pieces=[];values=[]
                if target:pieces.append((direction*N*target[1],scalar(**{target[0]:1})))
                for vertex,floor,source in zip(vertices,floors,origin['vertices']):
                    if vertex is None:assert source is None;values.append(F());continue
                    triangle,sign=vertex;assert sign in (-1,1)
                    value=endpoint(source,triangle,side if sign==1 else ('hi' if side=='lo' else 'lo'))
                    values.append(sign*value);pieces.append((-direction*floor*sign,scalar(**{triangle:1})))
                extreme=min(values) if side=='lo' else max(values)
                result=combination(*pieces,(1,scalar(-direction*residual*extreme)))
        assert result==(F(factor['constant']),clean(factor['coefficients'])),'changed affine-area source'
        factors[index]=result
    seen=set();terms=[]
    for index,printed in certificate['weights']:
        weight=int(printed);assert str(weight)==printed and weight>0 and index in factors and index not in seen
        seen.add(index);terms.append((weight,factors[index]))
    assert seen==set(factors)
    constant,coefficients=combination(*terms)
    assert (constant,coefficients)==(F(certificate['sum']['constant']),clean(certificate['sum']['coefficients']))
    return constant,coefficients,endpoint,len(factors)


def audit(certificate,relations,records):
    constant,coefficients,endpoint,count=reconstruct(certificate,relations,records)
    assert set(certificate['box'])==set(coefficients)
    ceiling=constant
    for triangle,value in coefficients.items():
        bounds=certificate['box'][triangle]
        lo,hi=endpoint(bounds['lo'],triangle,'lo'),endpoint(bounds['hi'],triangle,'hi');assert lo<=hi
        ceiling+=value*(hi if value>0 else lo)
    assert ceiling==F(certificate['upper'])<0
    return count


def audit_bound(certificate,relations,records,current):
    """Derive a new immutable endpoint from already proved affine factors."""
    constant,coefficients,endpoint,count=reconstruct(certificate,relations,records)
    target,side=certificate['triangle'],certificate['side']
    assert side in ('lo','hi') and target in coefficients
    coefficient=coefficients[target]
    assert coefficient>0 if side=='lo' else coefficient<0
    assert set(certificate['box'])==set(coefficients)-{target}
    ceiling=constant
    for triangle,value in coefficients.items():
        if triangle==target:continue
        bounds=certificate['box'][triangle]
        lo,hi=endpoint(bounds['lo'],triangle,'lo'),endpoint(bounds['hi'],triangle,'hi')
        assert lo<=hi
        ceiling+=value*(hi if value>0 else lo)
    assert ceiling==F(certificate['otherCeiling'])
    raw=-ceiling/coefficient
    value=down(raw) if side=='lo' else up(raw)
    old=F(records[current[target,side]]['value'])
    assert certificate['oldRef']==current[target,side]
    gain=value-old if side=='lo' else old-value
    assert raw==F(certificate['raw']) and value==F(certificate['value'])
    assert old==F(certificate['old']) and gain==F(certificate['gain']) and gain>0
    return count
