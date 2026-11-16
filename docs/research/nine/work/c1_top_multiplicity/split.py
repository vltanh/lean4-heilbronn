import sys,json
from pathlib import Path
import model as m
import discover as d
for mode in sys.argv[1:] or m.MODES:
 path=Path(__file__).with_name(mode+'.json');data=json.loads(path.read_text());certs=data['certificates'];split=data.get('split_cases',[]);missing=[];base=d.factor_data(mode)
 for case in m.cases(mode):
  if any(d.applicable(c,case) for c in certs if c['branch']==-1):continue
  if list(case) not in split:split.append(list(case))
  unknown=[t for t in m.TRIPLES if t not in m.signs(mode,case)]
  print('SPLIT',mode,case,'unknown',unknown,flush=True)
  for branch in range(1<<len(unknown)):
   if any(d.applicable(c,case,branch) for c in certs):continue
   cert,info=d.solve(mode,case,branch,base);print('RESULT',mode,case,branch,info,flush=True)
   if cert:certs.append(cert)
   else:missing.append([list(case),branch])
   path.write_text(json.dumps({'certificates':certs,'split_cases':split,'missing':missing},separators=(',',':')))
 print('FINAL',mode,'certificates',len(certs),'split',split,'missing',missing,flush=True)
 path.write_text(json.dumps({'certificates':certs,'split_cases':split,'missing':missing},separators=(',',':')))
