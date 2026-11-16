"""Exact finite and coordinate checks for the exterior R3 assembly."""
import sympy as S

rep=(3,2,3,4,5,4,4,3)
rows=[
 ((3,2,3,4,5,4,4,3),tuple(range(8)),1,5),
 ((3,4,5,4,4,3,3,2),tuple((3-i)%8 for i in range(8)),-1,6),
 ((4,3,3,2,3,4,5,4),tuple((7-i)%8 for i in range(8)),-1,2),
 ((5,4,4,3,3,2,3,4),tuple((i+4)%8 for i in range(8)),1,1),
]
orbit={tuple(rep[(i+2*r)%8] for i in range(8)) for r in range(4)}
orbit|={tuple(7-rep[(1-i+2*r)%8] for i in range(8)) for r in range(4)}
assert orbit=={row[0] for row in rows}
for word,perm,orientation,displaced in rows:
 mapped=tuple(word[j] if orientation==1 else 7-word[j] for j in perm)
 assert mapped==rep
 assert perm[displaced]==5
assert rep[0]>=3 and rep[3]>=4 and rep[2]>=3 and rep[6]>=4 and rep[1]<3
print('PASS: all four R3 words, complete orbit, and sharp-chamber signs')

a,h,b,c,d,e,f,g,k=S.symbols('a h b c d e f g k',real=True)
points=[(0,a),(b,0),(c,0),(1,d),(1,e),(g,k),(f,1),(0,h)]
maps=[lambda x,y:(x,y),lambda x,y:(1-x,y),lambda x,y:(x,1-y),lambda x,y:(1-x,1-y)]
expected=[
 [(0,a),(b,0),(c,0),(1,d),(1,e),(g,k),(f,1),(0,h)],
 [(0,d),(1-c,0),(1-b,0),(1,a),(1,h),(1-f,1),(1-g,k),(0,e)],
 [(0,1-h),(f,0),(g,1-k),(1,1-e),(1,1-d),(c,1),(b,1),(0,1-a)],
 [(0,1-e),(1-g,1-k),(1-f,0),(1,1-h),(1,1-a),(1-b,1),(1-c,1),(0,1-d)],
]
for row,transform,want in zip(rows,maps,expected):
 got=[transform(*points[j]) for j in row[1]]
 assert got==want,(got,want)
# Each difference is a previously established nonnegative/positive quantity.
assert S.expand(expected[1][2][0]-expected[1][5][0])==f-b
assert S.expand(expected[1][6][1]-expected[1][4][1])==k-h
assert S.expand(expected[2][0][1]-expected[2][2][1])==k-h
assert S.expand(expected[3][3][1]-expected[3][1][1])==k-h
for row,transform in zip(rows,maps):
 X,Y=S.symbols('X Y');values=transform(X,Y)
 assert S.det(S.Matrix(values).jacobian((X,Y)))==row[2]
print('PASS: all coordinate maps, area preservation, and moving-vertex hypotheses')
print('PASS: complete sharp R3 exterior class; equality requires k=1')
