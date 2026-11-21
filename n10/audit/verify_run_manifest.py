#!/usr/bin/env python3
"""Fail-closed accounting for exact global-cover run receipts.

This checker validates provenance hashes and disjoint completed ranges. It does
not re-run the geometric search, nor can a log prove its own execution. The
independent geometric replay is a separate acceptance requirement.

Manifest schema:
  {"schema":1,"checker_kind":"primary",
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
import importlib.util
import json
import re
import sys


FAMILIES = ('III', 'II', 'C2', 'C1', 'N')
RANGES = {kind:re.compile(r'^(III|II|C2|C1|N)_'+prefix+r'RANGE_PASS start=(\d+) stop=(\d+) total=(\d+) patterns=(\d+) roots=(\d+) search=(\d+) bb=(\d+) local=(\d+)(?: certified=(\d+))?$')
          for kind,prefix in [('primary',''),('independent','INDEPENDENT_')]}
COMPLETES = {kind:re.compile(r'^(III|II|C2|C1|N)_'+prefix+r'COMPLETE_PASS$')
             for kind,prefix in [('primary',''),('independent','INDEPENDENT_')]}
ROOT = Path(__file__).resolve().parents[2]
LEMMA_HEADER = re.compile(r'^N_ROOT_LEMMAS_LOADED count=(\d+) manifest_sha256=([0-9a-f]{64})$')


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


def replay_root_lemmas(entry,root):
    """Re-run the independent proof checker; never trust a prior PASS receipt."""
    need(isinstance(entry,dict), 'root-lemma dependencies')
    manifest_path = checked_file(entry.get('manifest'),root)
    table_path = checked_file(entry.get('table'),root)
    verifier_path = checked_file(entry.get('verifier'),root)
    need(verifier_path == Path(__file__).with_name('verify_lp_certificate.py').resolve(),
         'unexpected root-lemma verifier path')
    specification = importlib.util.spec_from_file_location('_n10_independent_lp_verifier',verifier_path)
    module = importlib.util.module_from_spec(specification)
    specification.loader.exec_module(module)
    manifest = json.loads(manifest_path.read_text())
    expected = set()
    for record in manifest.get('journals',[]):
        path = local_path(record.get('path'),root)
        entries,_ = module.read_inventory(path)
        need(not expected.intersection(entries), 'duplicate external lemma root')
        expected.update(entries)
    need(expected, 'empty external lemma inventory')
    records = []
    for record in manifest.get('roots',[]):
        path = local_path(record.get('certificate'),root)
        raw = path.read_bytes()
        proof = json.loads(raw)
        key = module.root_key(record.get('anchors'),record.get('free'))
        need(key in expected, 'root lemma absent from external inventory')
        result = module.verify(proof,key)
        records.append({'path':str(path),'sha256':hashlib.sha256(raw).hexdigest(),
                        'anchors':list(key[0]),'free':list(key[1]),**result})
    verified = module.check_manifest(manifest_path,expected,records,table_path)
    counts = {name:sum(record['counts'][name] for record in records)
              for name in ('local','area','farkas','empty','split','contractions','lp_bounds')}
    return {'manifest_sha256':verified['sha256'],'table_sha256':digest(table_path),
            'roots':len(records),'nodes':sum(record['nodes'] for record in records),'counts':counts,
            'patterns':[record['pattern'] for record in manifest['roots']],
            'verification':'fresh independent arbitrary-integer replay'}


def validate(manifest, root=ROOT, required=()):
    need(isinstance(manifest,dict) and manifest.get('schema') == 1, 'manifest schema')
    kind = manifest.get('checker_kind','primary')
    need(kind in RANGES, 'unknown checker kind')
    range_pattern,complete_pattern = RANGES[kind],COMPLETES[kind]
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
    lemma_data = replay_root_lemmas(manifest['root_lemmas'],root) if 'root_lemmas' in manifest else None
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
        matches = [(i,range_pattern.fullmatch(line)) for i,line in enumerate(lines)]
        matches = [(i,m) for i,m in matches if m]
        need(len(matches) == 1, family+': expected exactly one completed range')
        index,match = matches[0]
        need(match.group(1) == family, 'family does not match receipt')
        start,stop,total,patterns,roots,search,bb,local = map(int,match.groups()[1:9])
        certified = int(match.group(10) or '0')
        need(0 <= start < stop <= total, family+': invalid range endpoints')
        need(patterns == stop-start, family+': pattern count mismatch')
        need(roots <= search and local <= bb, family+': inconsistent counters')
        need(certified <= roots, family+': certified count exceeds root count')
        need(family == 'N' or local == 0, family+': unexpected local acceptance')
        need(family == 'N' or certified == 0, family+': unexpected external root lemma')
        lemma_headers = [LEMMA_HEADER.fullmatch(line) for line in lines if LEMMA_HEADER.fullmatch(line)]
        if certified or lemma_headers:
            need(family == 'N' and lemma_data is not None,
                 'external root lemmas lack independent manifest/table/certificate replay')
            need(len(lemma_headers) == 1, 'missing/duplicate root-lemma load header')
            header = lemma_headers[0]
            need(int(header.group(1)) == lemma_data['roots'] and
                 header.group(2) == lemma_data['manifest_sha256'], 'root-lemma run provenance mismatch')
            expected_count = sum(start <= index < stop for index in lemma_data['patterns'])
            need(certified == expected_count, 'certified count does not equal exact root keys in this range')
        elif family == 'N' and lemma_data is not None:
            need(False, 'N run lacks the required verified root-lemma load header')
        complete_matches = [(i,complete_pattern.fullmatch(line)) for i,line in enumerate(lines)]
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
            'certified':certified,
            'log':record['log']})
    report = {'schema':1,'checker_kind':kind,'source_sha256':source_sha,'families':{},
              'scope':'provenance and exhaustive range accounting; geometric replay is separate'}
    if lemma_data is not None:
        report['root_lemmas'] = lemma_data
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
        for counter in ('patterns','roots','search','bb','local','certified'):
            summary[counter] = sum(item[counter] for item in intervals)
        report['families'][family] = summary
        need(completed or family not in required, family+': uncovered ranges '+str(gaps))
        if family == 'N' and completed and lemma_data is not None:
            need(summary['certified'] == lemma_data['roots'], 'complete N cover omitted an external root lemma')
    # N leaves invoke these exact local-theorem inputs. Checking only a log of
    # the seed verifier would not bind the actual local theorem and dual data.
    if by_family['N'] and (any(item['local'] for item in by_family['N']) or
                          (lemma_data is not None and lemma_data['counts']['local'])):
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
