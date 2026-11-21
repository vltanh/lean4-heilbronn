"""Independent negative probes of four literal ITTT top-word arguments.

Changes are supplied to the Fraction reader in memory; the printed proof
files stay intact. No discovery implementation or author reader is imported.
"""
from contextlib import redirect_stdout
from io import StringIO
from pathlib import Path
import re
import runpy
import sys
from unittest.mock import patch

HERE = Path(__file__).resolve().parent
READER = HERE / 'audit_n6_bttt_remaining.py'
original_read_text = Path.read_text


def replace_once(text, pattern, replacement):
    changed, count = re.subn(pattern, replacement, text, count=1, flags=re.M)
    assert count == 1 and changed != text, pattern
    return changed


cases = [('EAR', 'MPPM', '--ittt-ear-mppm'), ('EAR', 'PPMP', '--ittt-ear-ppmp'),
         ('TRI', 'MMMM', '--ittt-tri-mmmm'), ('TRI', 'MMMP', '--ittt-tri-mmmp')]
for group, suffix, flag in cases:
    root = HERE / ('N6_BTTT_REMAINING_ITTT_' + group + '_' + suffix + '_TABLES')
    documents = {p.resolve(): original_read_text(p) for p in root.glob('*.md')}
    first = (root / 'stages_00.md').resolve()
    index = (root / 'INDEX.md').resolve()
    contexts = (root / 'contexts.md').resolve()
    bary_pattern = r'(\| bary \| [^\n]*?; vertices [A-Z]{3} )(-?1)'
    bary_file = next(p for p, text in documents.items() if re.search(bary_pattern, text))
    upper_file = next(p for p, text in documents.items() if 'upper point ' in text)
    changes = [
        ('changed fixed upper-point ceiling', upper_file,
         r'(upper point [xy]; fixed ceiling )([^ |]+)', r'\g<1>1/10'),
        ('illegal lower-central factor', upper_file,
         r'upper point [xy]; fixed ceiling [^ |]+', 'central lower x'),
        ('changed actual area floor', first,
         r'(actual ABC; occupants none \| `[^`]*?)-93/1000', r'\g<1>-94/1000'),
        ('changed initial endpoint', first,
         r'(\| a \| )1037/10000', r'\g<1>1038/10000'),
        ('future area source', first,
         r'earlier 0:(\d+);', r'earlier 999999:\1;'),
        ('future parent box', first,
         r'(\| Parent box \| )0( \|)', r'\g<1>999999\2'),
        ('changed barycentric fan sign', bary_file,
         bary_pattern,
         lambda m: m[1] + ('1' if m[2] == '-1' else '-1')),
        ('omitted binary leaf', index,
         r'^\| root/[^\n]*? \| none \| none \| \d+ \| none \|\n', ''),
        ('changed given actual sign', contexts,
         r'(\| Given actual signs \| [A-Z]{3})([+-])',
         lambda m: m[1] + ('+' if m[2] == '-' else '-')),
    ]
    for name, path, pattern, replacement in changes:
        corrupt = replace_once(documents[path], pattern, replacement)

        def read_text(self, *args, **kwargs):
            return corrupt if self.resolve() == path else original_read_text(self, *args, **kwargs)

        old_argv = sys.argv
        sys.argv = [str(READER), flag]
        try:
            with patch.object(Path, 'read_text', read_text), redirect_stdout(StringIO()):
                runpy.run_path(str(READER), run_name='__main__')
        except (AssertionError, KeyError, ValueError, IndexError):
            print(suffix, 'rejected:', name, flush=True)
        else:
            raise AssertionError('Corruption accepted: ' + suffix + ' ' + name)
        finally:
            sys.argv = old_argv

print('All 36 independent top-word corruptions rejected.')
