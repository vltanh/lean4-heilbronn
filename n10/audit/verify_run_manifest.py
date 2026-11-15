#!/usr/bin/env python3
"""Fail-closed accounting for exact global-cover run receipts.

This checker validates provenance hashes and disjoint completed ranges. It does
not re-run the geometric search, nor can a log prove its own execution. The
independent geometric replay is a separate acceptance requirement.

Manifest schema:
  {"schema":1,
   "source":{"path":"n10/global/global_cover.cpp","sha256":"..."},
   "dependencies":[{"path":"n10/seed/LOCAL_THEOREM.md","sha256":"..."},...],
   "runs":[{"family":"III","log":"n10/runs/III.log","log_sha256":"...",
            "exit_code":0,"source_sha256":"..."},...]}

Paths are relative to the repository root. The default reports completed and
incomplete families; --require-all or --require-family turns missing coverage
into failure. No overlapping range, duplicated receipt, out-of-range endpoint,
failed process, inconsistent total, or unfinished log is accepted.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
import sys


FAMILIES = ('III', 'II', 'C2', 'C1', 'N')
RANGE = re.compile(r'^(III|II|C2|C1|N)_RANGE_PASS start=(\d+) stop=(\d+) total=(\d+) patterns=(\d+) roots=(\d+) search=(\d+) bb=(\d+) local=(\d+)$')
COMPLETE = re.compile(r'^(III|II|C2|C1|N)_COMPLETE_PASS$')
ROOT = Path(__file__).resolve().parents[2]


def need(ok, message):
    if not ok:
        raise ValueError(message)


def digest(path):
    hasher = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024*1024), b''):
            hasher.update(block)
    return hasher.hexdigest()


def local_path(value, root):
    need(isinstance(value,str) and value != '', 'missing file path')
    path = (root/value).resolve()
    need(path.is_relative_to(root.resolve()), 'path outside repository')
    need(path.is_file(), 'missing file: '+value)
    return path


def checked_file(record, root):
    need(isinstance(record,dict), 'invalid hashed file record')
    path = local_path(record.get('path'),root)
    expected = record.get('sha256')
    need(isinstance(expected,str) and re.fullmatch(r'[0-9a-f]{64}',expected),
         'invalid sha256: '+str(record.get('path')))
    need(digest(path) == expected, 'hash mismatch: '+record['path'])
    return path


def validate(manifest, root=ROOT, required=()):
    need(isinstance(manifest,dict) and manifest.get('schema') == 1, 'manifest schema')
    source = manifest.get('source')
    checked_file(source,root)
    source_sha = source['sha256']
    dependencies = manifest.get('dependencies',[])
    need(isinstance(dependencies,list), 'dependency list')
    dependency_paths = set()
    for entry in dependencies:
        path = checked_file(entry,root)
        need(path not in dependency_paths, 'duplicate dependency')
        dependency_paths.add(path)
    records = manifest.get('runs')
    need(isinstance(records,list) and records, 'no run receipts')
    by_family = {family:[] for family in FAMILIES}
    log_paths = set()
    for record in records:
        need(isinstance(record,dict), 'run record')
        family = record.get('family')
        need(family in FAMILIES, 'unknown family')
        need(type(record.get('exit_code')) is int and record['exit_code'] == 0,
             family+': process did not exit successfully')
        need(record.get('source_sha256') == source_sha, family+': mixed source revisions')
        path = checked_file({'path':record.get('log'),'sha256':record.get('log_sha256')},root)
        need(path not in log_paths, 'duplicate log file')
        log_paths.add(path)
        lines = [line.strip() for line in path.read_text().splitlines() if line.strip()]
        need(lines, family+': empty log')
        need(not any('FAIL' in line or 'INCOMPLETE' in line for line in lines),
             family+': failed/incomplete marker')
        matches = [(i,RANGE.fullmatch(line)) for i,line in enumerate(lines)]
        matches = [(i,m) for i,m in matches if m]
        need(len(matches) == 1, family+': expected exactly one completed range')
        index,match = matches[0]
        need(match.group(1) == family, 'family does not match receipt')
        start,stop,total,patterns,roots,search,bb,local = map(int,match.groups()[1:])
        need(0 <= start < stop <= total, family+': invalid range endpoints')
        need(patterns == stop-start, family+': pattern count mismatch')
        need(roots <= search and local <= bb, family+': inconsistent counters')
        need(family == 'N' or local == 0, family+': unexpected local acceptance')
        complete_matches = [(i,COMPLETE.fullmatch(line)) for i,line in enumerate(lines)]
        complete_matches = [(i,m) for i,m in complete_matches if m]
        need(len(complete_matches) <= 1, family+': duplicate completion marker')
        if complete_matches:
            complete_index,complete_match = complete_matches[0]
            need(complete_match.group(1) == family, 'wrong family completion marker')
            need(start == 0 and stop == total, family+': partial range claims completeness')
            need(complete_index == index+1 == len(lines)-1,
                 family+': unexpected output after range/completion')
        else:
            need(index == len(lines)-1, family+': output continues after range receipt')
        by_family[family].append({'start':start,'stop':stop,'total':total,
            'patterns':patterns,'roots':roots,'search':search,'bb':bb,'local':local,
            'log':record['log']})
    report = {'schema':1,'source_sha256':source_sha,'families':{},
              'scope':'provenance and exhaustive range accounting; geometric replay is separate'}
    for family,intervals in by_family.items():
        intervals.sort(key=lambda item:item['start'])
        if not intervals:
            report['families'][family] = {'complete':False,'reason':'no receipt'}
            need(family not in required, family+': missing complete cover')
            continue
        total = intervals[0]['total']
        end = 0
        gaps = []
        for entry in intervals:
            need(entry['total'] == total, family+': inconsistent pattern totals')
            need(entry['start'] >= end, family+': overlapping/duplicated range')
            if entry['start'] > end:
                gaps.append([end,entry['start']])
            end = entry['stop']
        if end < total:
            gaps.append([end,total])
        completed = not gaps
        summary = {'complete':completed,'total':total,'ranges':len(intervals),'gaps':gaps}
        for counter in ('patterns','roots','search','bb','local'):
            summary[counter] = sum(item[counter] for item in intervals)
        report['families'][family] = summary
        need(completed or family not in required, family+': uncovered ranges '+str(gaps))
    # N leaves invoke these exact local-theorem inputs. Checking only a log of
    # the seed verifier would not bind the actual local theorem and dual data.
    if by_family['N'] and any(item['local'] for item in by_family['N']):
        for name in ['LOCAL_THEOREM.md','verify_n10.py','local_dual_data.py']:
            need((root/'n10'/'seed'/name).resolve() in dependency_paths,
                 'N local leaves lack dependency hash for '+name)
        for i in range(8):
            name = root/'n10'/'seed'/'dual_data'/f'{i:02d}.b64'
            need(name.resolve() in dependency_paths, 'N local leaves lack dual-data dependency hash')
    report['all_families_complete'] = all(item['complete'] for item in report['families'].values())
    report['status'] = 'PASS'
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('manifest', type=Path)
    parser.add_argument('--require-all',action='store_true')
    parser.add_argument('--require-family',choices=FAMILIES,action='append',default=[])
    parser.add_argument('--output',type=Path)
    args = parser.parse_args()
    required = FAMILIES if args.require_all else args.require_family
    report = validate(json.loads(args.manifest.read_text()), required=required)
    text = json.dumps(report,indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    print(text,end='')


if __name__ == '__main__':
    try:
        main()
    except (ValueError,KeyError,OSError,json.JSONDecodeError) as error:
        print('FAIL_OR_INCOMPLETE: '+str(error),file=sys.stderr)
        sys.exit(2)
