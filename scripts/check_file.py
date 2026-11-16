#!/usr/bin/env python3
"""Check one Lean file against the compiled outputs of its imports, with the lakefile's options.

usage: check_file.py FILE.lean [--log LOG]

Run from the project root, after the file's imports have been built. `lake env lean` ignores the
`[leanOptions]` of lakefile.toml, so this script reads them and passes each one with `-D`.
Prints the number of errors and of `sorry` warnings, and writes Lean's output to LOG (default:
/tmp/check_<file>.log).
"""
import argparse
import pathlib
import re
import subprocess
import sys



def lean_options(lakefile='lakefile.toml'):
    """The `key = value` pairs of the [leanOptions] table of lakefile.toml."""
    opts, inside = [], False
    try:
        lines = pathlib.Path(lakefile).read_text(encoding='utf-8').splitlines()
    except FileNotFoundError:
        return opts
    for line in lines:
        line = line.split('#', 1)[0].strip()
        if line.startswith('['):
            inside = line == '[leanOptions]'
            continue
        if inside and '=' in line:
            key, value = (s.strip() for s in line.split('=', 1))
            opts.append(f'-D{key}={value.strip(chr(34))}')
    return opts


def check(path, log):
    cmd = ['lake', 'env', 'lean', *lean_options(), path]
    out = subprocess.run(cmd, capture_output=True, text=True)
    text = out.stdout + out.stderr
    pathlib.Path(log).write_text(text, encoding='utf-8')
    errors = len(re.findall(r':\d+:\d+: error', text))
    sorries = text.count("declaration uses `sorry`") + text.count("declaration uses 'sorry'")
    return errors, sorries


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument('file')
    ap.add_argument('--log')
    args = ap.parse_args()
    log = args.log or f"/tmp/check_{args.file.replace('/', '_')}.log"
    errors, sorries = check(args.file, log)
    print(f'errors: {errors}  sorries: {sorries}  log: {log}')
    return 1 if errors else 0


if __name__ == '__main__':
    sys.exit(main())
