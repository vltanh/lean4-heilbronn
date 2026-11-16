#!/usr/bin/env python3
"""One-off restructuring: move the nine-point proof under Heilbronn/Nine/ (namespace Heilbronn.Nine).

usage: restructure_nine.py ROOT

Run from nowhere in particular; ROOT is the repository checkout to rewrite (it must be a git
checkout with the old layout). Moves files with `git mv`, rewrites module paths in imports,
namespaces, qualified names, data paths of `*_rows%` readers, and documentation paths. The new
statement files (Geometry, Common/Optimum, Nine/Basic, Nine/Uniqueness additions, root module) are
written separately.
"""
import os, re, subprocess, sys
from pathlib import Path

ROOT = Path(sys.argv[1]).resolve()
os.chdir(ROOT)


def git(*args):
    subprocess.run(['git', *args], check=True)


COMMON_KEEP = {'Basic', 'Certificate', 'Bernstein', 'Cover', 'CertNotation', 'DataReader', 'Config'}
DIRS = {'Normalization': 'Normalization', 'Local': 'Local', 'Global': 'Global', 'Hulls': 'Hulls',
        'Corners': 'Corners', 'TypeII': 'TypeII', 'Sharp': 'Sharp', 'C1': 'C1',
        'Seven': 'SevenBoundary', 'Six': 'SixBoundary', 'Assembly': 'Assembly',
        'Construction': 'Construction'}


def new_module(mod):
    """The new module name of an old one (None if unchanged)."""
    p = mod.split('.')
    if p[0] != 'Heilbronn' or len(p) == 1:
        return None
    if p[1] == 'Geometry':
        return None
    if p[1] == 'Common':
        if len(p) == 3 and p[2] in COMMON_KEEP:
            return None
        if len(p) == 3 and p[2] == 'Families':
            return 'Heilbronn.Nine.Families'
        raise ValueError(mod)
    if p[1] == 'Construction':
        return '.'.join(['Heilbronn', 'Nine', 'Construction'] + p[2:])
    if p[1] == 'Assembly':
        if p[2:] == ['Main']:
            return 'Heilbronn.Nine.Uniqueness'
        return '.'.join(['Heilbronn', 'Nine', 'Assembly'] + p[2:])
    if p[1] == 'Eight':
        if p[2] == 'EightBoundary':
            return '.'.join(['Heilbronn', 'Nine', 'EightBoundary'] + p[3:])
        return '.'.join(['Heilbronn', 'Nine', 'EightBoundary'] + p[2:])
    if p[1] in DIRS:
        return '.'.join(['Heilbronn', 'Nine', DIRS[p[1]]] + p[2:])
    raise ValueError(mod)


def mod_of(path):
    return '.'.join(path.with_suffix('').parts)


def path_of(mod):
    return Path(*mod.split('.')).with_suffix('.lean')


# 1. The Lean files and their moves.
lean_files = sorted(Path('Heilbronn').rglob('*.lean'))
moves = {}
for f in lean_files:
    nm = new_module(mod_of(f))
    if nm:
        moves[f] = path_of(nm)

# Namespaces declared in moved files (their roots get the Nine prefix), and the declarations of
# the moved files that live in the plain `Heilbronn` namespace.
roots, plain_names = set(), set()
decl = re.compile(r'^(?:@\[[^\]]*\]\s*)?(?:private |protected |noncomputable |public )*'
                  r'(?:theorem|lemma|def|abbrev|structure|inductive|instance|class)\s+([^\s:({\[]+)', re.M)
for f in moves:
    s = f.read_text()
    for ns in re.findall(r'^namespace Heilbronn\.(\w+)', s, re.M):
        if ns not in ('Cert', 'Cover', 'DataReader'):
            roots.add(ns)
    if re.search(r'^namespace Heilbronn$', s, re.M):
        plain_names.update(decl.findall(s))
# The nine-point parts of Geometry and Common/Config, moved to Heilbronn.Nine by hand.
plain_names.update({'p₀', 'optimalConfiguration', 'A₀', 'A₀_def', 'sqrt65_bounds', 'A₀_bounds',
                    'A₀_pos'})
plain_names.discard('Point')

# 2. Data, script and documentation moves.
data_moves = {d: Path('data/nine') / d.name for d in sorted(Path('data').iterdir()) if d.name != 'nine'}
GENERIC_SCRIPTS = {'certlib.py', 'verify-comparator.sh', 'check_file.py', 'snapshot_check.py',
                   'lean_watchdog.sh', 'restructure_nine.py', '__pycache__'}
script_moves = {s: Path('scripts/nine') / s.name for s in sorted(Path('scripts').iterdir())
                if s.name not in GENERIC_SCRIPTS and s.name != 'nine'}
doc_moves = {Path(p): Path('docs/proof/nine') / p for p in
             ['hand', 'exact', 'research', 'work', 'HANDOFF.md', 'ROADMAP.md']}
doc_moves[Path('README.md')] = Path('docs/proof/nine/README.md')

# 3. Rewrite the contents of every Lean file, at its old path, then move.
imp = re.compile(r'^((?:public )?(?:meta )?import(?: all)? )(Heilbronn(?:\.[\w₀-₉]+)*)\s*$', re.M)
root_re = re.compile(r'\bHeilbronn\.(' + '|'.join(sorted(roots, key=len, reverse=True)) + r')\b')
plain_re = re.compile(r'\bHeilbronn\.(' + '|'.join(re.escape(n) for n in
                      sorted(plain_names, key=len, reverse=True)) + r')(?![\w₀-₉\'])')
rows = re.compile(r'((?:term|int|key|poly|nat)_rows% )"([^"]+)"')
data_names = [d.name for d in data_moves]
script_names = [s.name for s in script_moves]
olddir_re = re.compile(r'Heilbronn/(Eight/EightBoundary|Eight|Seven|Six|Normalization|Local|Global|Hulls|'
                       r'Corners|TypeII|Sharp|C1|Assembly|Construction|Common/Families)(\b|/)')


def newdir(m):
    old = m.group(1)
    if old == 'Common/Families':
        return 'Heilbronn/Nine/Families' + m.group(2)
    if old in ('Eight/EightBoundary', 'Eight'):
        return 'Heilbronn/Nine/EightBoundary' + m.group(2)
    return 'Heilbronn/Nine/' + DIRS[old] + m.group(2)


def rewrite_docpaths(s):
    s = re.sub(r'(?<![\w/])hand/', 'docs/proof/nine/hand/', s)
    s = re.sub(r'(?<![\w/])research/', 'docs/proof/nine/research/', s)
    for n in data_names:
        s = re.sub(r'(?<![\w/])data/' + re.escape(n) + r'\b', 'data/nine/' + n, s)
    for n in script_names:
        s = re.sub(r'(?<![\w/])scripts/' + re.escape(n) + r'\b', 'scripts/nine/' + n, s)
    s = olddir_re.sub(newdir, s)
    return s


def rewrite(path, s, moved):
    new_path = moves.get(path, path)
    s = imp.sub(lambda m: m.group(1) + (new_module(m.group(2)) or m.group(2)), s)
    if moved:
        s = re.sub(r'^namespace Heilbronn$', 'namespace Heilbronn.Nine', s, flags=re.M)
        s = re.sub(r'^end Heilbronn$', 'end Heilbronn.Nine', s, flags=re.M)
    out = []
    for line in s.split('\n'):
        if imp.match(line):
            out.append(line)
            continue
        if moved:
            line = re.sub(r'^(namespace|end) Heilbronn\.(?!Cert\b|Cover\b|DataReader\b|Nine\b)',
                          r'\1 Heilbronn.Nine.', line)
        line = root_re.sub(lambda m: 'Heilbronn.Nine.' + m.group(1), line)
        line = plain_re.sub(lambda m: 'Heilbronn.Nine.' + m.group(1), line)
        out.append(line)
    s = '\n'.join(out)
    # Data paths of the readers: recompute relative to the new location.

    def fix_rows(m):
        target = (path.parent / m.group(2)).resolve().relative_to(ROOT)
        parts = target.parts
        if parts[0] == 'data' and parts[1] != 'nine':
            target = Path('data/nine', *parts[1:])
        rel = os.path.relpath(target, new_path.parent)
        return m.group(1) + '"' + rel + '"'
    s = rows.sub(fix_rows, s)
    s = rewrite_docpaths(s)
    # A file that imported Common.Config for A₀ now imports Nine.Basic.
    if moved:
        s = re.sub(r'^(public )?import Heilbronn\.Common\.Config\s*$', r'\1import Heilbronn.Nine.Basic',
                   s, flags=re.M)
    return s


targets = list(lean_files) + [Path(p) for p in ['Heilbronn.lean', 'AxiomAudit.lean',
                                                'SanityChecks.lean'] if Path(p).exists()]
new_text = {}
for f in targets:
    new_text[f] = rewrite(f, f.read_text(), f in moves)

# Python scripts: data, script and documentation paths (best effort; the generators are not
# trusted by the proof).
py_text = {}
for f in sorted(Path('scripts').rglob('*.py')):
    if f.name == 'restructure_nine.py':
        continue
    s = f.read_text()
    t = rewrite_docpaths(s)
    t = t.replace("ROOT / 'hand'", "ROOT / 'docs' / 'proof' / 'nine' / 'hand'")
    for n in script_names:
        t = t.replace("'scripts' / '%s'" % n, "'scripts' / 'nine' / '%s'" % n)
    if any(f.is_relative_to(s) for s in script_moves):
        # one level deeper: every parents[k] (and parent) towards the root shifts by one
        t = re.sub(r'parents\[(\d+)\]', lambda m: 'parents[%d]' % (int(m.group(1)) + 1), t)
    if t != s:
        py_text[f] = t

for f, t in new_text.items():
    f.write_text(t)
for f, t in py_text.items():
    f.write_text(t)

for old, new in moves.items():
    new.parent.mkdir(parents=True, exist_ok=True)
    git('mv', str(old), str(new))
for old, new in list(data_moves.items()) + list(script_moves.items()) + list(doc_moves.items()):
    if old.exists():
        new.parent.mkdir(parents=True, exist_ok=True)
        git('mv', str(old), str(new))
# empty old directories
for d in sorted(Path('Heilbronn').rglob('*'), reverse=True):
    if d.is_dir() and not any(d.iterdir()):
        d.rmdir()
print('moved %d Lean files, %d data dirs, %d script entries, %d doc entries; %d namespace roots, '
      '%d plain names' % (len(moves), len(data_moves), len(script_moves), len(doc_moves), len(roots),
                          len(plain_names)))
