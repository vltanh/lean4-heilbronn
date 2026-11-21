"""Readable proof-record syntax for N7 one-lower-point manuscripts."""
import n7_one_lower_rules as v
def word(indices):return ''.join(v.L[i] for i in indices)
def encode_step(item):
 why,target,sn=item;op=why[0]
 if op=='mesh':return ' '.join(['mesh',word(why[1]),word(why[2]),target,str(sn)])
 if op=='plu':return 'plu '+v.L[why[1]]+word(why[2])+' '+target+' '+str(sn)
 if op in ['via','hullvia']:
  _,point,poly,i,j=why;return ' '.join([op,v.L[point],word(poly),word([i,j]),str(sn)])
 if op=='line':
  _,poly,pair,vertex=why;return ' '.join([op,word(poly),word(pair),v.L[vertex],str(sn)])
 if op in ['chord_from','chord']:
  if op=='chord_from':_,poly,pair,chord=why
  else:_,I,J,chord=why;poly=v.HULL;pair=[I,J]
  return ' '.join(['chord',word(poly),word(pair),word(chord),target,str(sn)])
 if op=='topcap':
  _,first,second,poly=why;return ' '.join(['cap',word(poly),word([first,second]),target,str(sn)])
 if op=='capray':
  _,poly,pair,I,J,Kc=why;return ' '.join(['ray',word(poly),word(pair),word([I,J,Kc]),target,str(sn)])
 raise ValueError(why)
def decode_step(line):
 op,*args=line.split()
 if op=='mesh':outer,points,target,sg=args;return [['mesh',v.wi(outer),v.wi(points)],target,int(sg)]
 if op=='plu':w,target,sg=args;return [['plu',v.wi(w)[0],v.wi(w)[1:]],target,int(sg)]
 if op in ['via','hullvia']:
  pt,poly,edge,sg=args;i,j=v.wi(edge);return [[op,v.wi(pt)[0],v.wi(poly),i,j],edge+pt,int(sg)]
 if op=='line':
  poly,pair,vertex,sg=args;return [[op,v.wi(poly),v.wi(pair),v.wi(vertex)[0]],vertex+pair,int(sg)]
 if op=='chord':
  poly,pair,chord,target,sg=args;return [['chord_from',v.wi(poly),v.wi(pair),v.wi(chord)],target,int(sg)]
 if op=='cap':
  poly,pair,target,sg=args;I,J=v.wi(pair);return [['topcap',I,J,v.wi(poly)],target,int(sg)]
 if op=='ray':
  poly,pair,rot,target,sg=args;return [['capray',v.wi(poly),v.wi(pair),*v.wi(rot)],target,int(sg)]
 raise ValueError(line)
def encode_terminal(terminal):
 kind,*args=terminal
 if kind=='nomesh':return 'nomesh '+word(args[0])+' '+word(args[1])
 if kind=='plucker':return 'plucker '+v.L[args[0]]+word(args[1])
 if kind=='regionline':return 'regionline '+word(args[0])+' '+word(args[1])
 if kind=='cap':return 'cap '+word(args[0])+' '+word(args[1])
 if kind=='lowerpaired':return 'lowerpaired '+v.L[args[1]]
 if kind=='cluster':outer,pivot,fan,rest=args;return ' '.join(['cluster',word(outer),v.L[pivot],word(fan),word(rest)])
 if kind=='smallquad':return 'smallquad '+word(args[0])+' '+word(args[1])
 if kind in ['box_triangle','vertex_triangle']:which,poly,occ,cost,bound=args;return ' '.join(['boxtri'if kind=='box_triangle'else'vboxtri',which,word(poly),word(occ)or'none',cost,bound])
 if kind=='inconsistent':tri,sn,why=args;return 'contra '+encode_step([why,word(tri),sn])
 raise ValueError(terminal)
def decode_terminal(line):
 kind,*args=line.split()
 if kind=='nomesh':return [kind,*map(v.wi,args)]
 if kind=='plucker':idx=v.wi(args[0]);return [kind,idx[0],idx[1:]]
 if kind in ['regionline','cap','smallquad']:return [kind,*map(v.wi,args)]
 if kind=='lowerpaired':return [kind,[[0,1,2],[0,1,7]],v.wi(args[0])[0]]
 if kind=='cluster':return [kind,v.wi(args[0]),v.wi(args[1])[0],v.wi(args[2]),v.wi(args[3])]
 if kind in ['boxtri','vboxtri']:return ['box_triangle'if kind=='boxtri'else'vertex_triangle',args[0],v.wi(args[1]),[]if args[2]=='none'else v.wi(args[2]),args[3],args[4]]
 if kind=='contra':why,target,sn=decode_step(' '.join(args));return ['inconsistent',v.wi(target),sn,why]
 raise ValueError(line)
