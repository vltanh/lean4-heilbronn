"""Shared exporter pieces: converting hand certificates to integer weights on the atoms of a
radial package, and writing chunked Lean modules (one certificate per theorem)."""
import sys
from fractions import Fraction as F
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'scripts'))
import certlib  # noqa: E402
from certlib import k  # noqa: E402

CHUNK_TERMS = 2500


def lean_tree(t):
    """t: ('cert', path) | ('node', split_lean, [children])."""
    if t[0] == 'cert':
        return '.cert (term_rows%% "%s")' % t[1]
    return '.node (%s) [%s]' % (t[1], ', '.join(lean_tree(c) for c in t[2]))


def tree_terms(t, sizes):
    if t[0] == 'cert':
        return sizes[t[1]]
    return sum(tree_terms(c, sizes) for c in t[2])


def write_chunks(leaves, sizes, lean_dir, model_mod, ns, header_doc, chunk_prefix):
    """leaves: [(name, facts_lean, tree, doc)].  Writes chunk modules; returns their module names."""
    lean_dir.mkdir(parents=True, exist_ok=True)
    chunks, cur, cur_n = [], [], 0
    for lf in leaves:
        n = tree_terms(lf[2], sizes)
        if cur and cur_n + n > CHUNK_TERMS:
            chunks.append((cur, cur_n))
            cur, cur_n = [], 0
        cur.append(lf)
        cur_n += n
    if cur:
        chunks.append((cur, cur_n))
    mods = []
    for ci, (lfs, nt) in enumerate(chunks):
        out = ['module\n\npublic import %s\npublic import Heilbronn.Common.DataReader\n\n'
               '/-! # %s, chunk %d (%d certificate terms; generated) -/\n\n'
               '@[expose] public section\n\nnamespace %s\n\nopen Cert Cert.Expr Cover SixRadial\n\n'
               % (model_mod, header_doc, ci, nt, ns)]
        for name, facts, t, doc in lfs:
            out.append('/-- %s -/\nnoncomputable def %s : Cover.Tree Split :=\n  %s\n\n'
                       'theorem %s_ok : checkTree (pkg.spec Pkg.noClosed) (%s) %s = true := by\n'
                       '  decide +kernel\n\n' % (doc, name, lean_tree(t), name, facts, name))
        out.append('end %s\n' % ns)
        (lean_dir / ('%s%d.lean' % (chunk_prefix, ci))).write_text(''.join(out))
        mods.append(ci)
    return chunks
