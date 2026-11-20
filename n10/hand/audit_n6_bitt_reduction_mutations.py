"""Reject false source, scope and conclusion records in the BITT manuscript."""
from contextlib import redirect_stdout
from io import StringIO
from pathlib import Path
import runpy
import sys
from unittest.mock import patch

HERE = Path(__file__).resolve().parent
TABLES = HERE / 'N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_REDUCTION_TABLES'
READER = HERE / 'audit_n6_bttt_remaining.py'
CASES = [
    ('changed base sign', 'contexts', '| ABP | + |', '| ABP | - |'),
    ('unproved hull occupant', 'stages_000', '["actual-area","ABC",[]]', '["actual-area","ABC",["P"]]'),
    ('false coarse endpoint', 'stages_000', '| a | 1037/10000 |', '| a | 1036/10000 |'),
    ('wrong immutable source', 'stages_000', 'earlier 0:171; CFR;', 'earlier 1:100; CFR;'),
    ('wrong barycentric triangle', 'stages_001', '["weighted-barycentric","R","S",', '["weighted-barycentric","S","R",'),
    ('unproved positive conclusion', 'stages_001', '| ACP+, HBP+ |', '| ACP+, HBP- |'),
    ('false clustered fan', 'stages_023', '| ACR | S | ACS | P, Q |', '| ACR | S | ARS | P, Q |'),
    ('missing branch', 'INDEX', 'root/ACP-, root/ACP+ | none', 'root/ACP- | none'),
    ('terminal on another branch', 'INDEX', '| 4, 5 | none | none | 5 |', '| 4, 5 | none | none | 23 |'),
]


def main():
    original = Path.read_text
    for name, stem, before, after in CASES:
        target = TABLES / (stem+'.md')
        baseline = original(target)
        assert before in baseline, name
        altered = baseline.replace(before, after, 1)
        used = False

        def read(path, *args, **kwargs):
            nonlocal used
            if path == target:
                used = True
                return altered
            return original(path, *args, **kwargs)

        with patch.object(Path, 'read_text', read), patch.object(sys, 'argv', [str(READER), '--bitt-triangular-lower-central']), redirect_stdout(StringIO()):
            try:
                runpy.run_path(str(READER), run_name='__main__')
            except (AssertionError, KeyError, ValueError):
                assert used, name
            else:
                raise AssertionError('Accepted alteration '+name)
        print('Rejected', name, flush=True)


if __name__ == '__main__':
    main()
