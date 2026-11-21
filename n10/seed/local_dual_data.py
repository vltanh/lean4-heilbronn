"""Exact cubic-field dual coefficients, losslessly compressed as data only.
Run this file to print all 38 certificates as ordinary JSON.
"""
import base64, hashlib, json, zlib
from pathlib import Path
SHA256 = "98d8c1b7ba38cd6d9f970da72f93b80c8d5e0abed87446ce6120ad037bd75f46"
def get_duals():
    root=Path(__file__).resolve().parent/'dual_data'
    data=''.join((root/f'{i:02d}.b64').read_text().strip() for i in range(8))
    raw=zlib.decompress(base64.b64decode(data,validate=True))
    if hashlib.sha256(raw).hexdigest()!=SHA256:
        raise ValueError('dual data hash')
    return json.loads(raw)
if __name__=='__main__':
    print(json.dumps(get_duals(),indent=2))
