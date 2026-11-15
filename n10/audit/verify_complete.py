#!/usr/bin/env python3
"""Audit the complete stored n=10 proof package, without a compiler or LP solver.

Runs exact attainment/local/threshold checks, fresh independent LP certificate
replay, exhaustive range accounting, and row-by-row agreement of the two
independently implemented global enumerators. SymPy is used only for the
independent algebraic-number seed audit. This command checks stored run
receipts; full C++ enumeration replay is documented separately.
"""
from collections import Counter
from contextlib import ExitStack
from itertools import zip_longest
from pathlib import Path
import argparse
import csv
import gzip
import json
import subprocess
import sys
from verify_run_manifest import ROOT, FAMILIES, RANGES, checked_file, digest, need, validate


def run_exact_check(path):
    completed = subprocess.run([sys.executable,str(ROOT/path)],cwd=ROOT,
                               stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
    need(completed.returncode == 0,path+': '+completed.stderr+completed.stdout)
    return {'path':path,'sha256':digest(ROOT/path),'exit_code':completed.returncode,
            'stdout':completed.stdout.strip()}


def anchors_valid(family,anchors):
    need(all(type(a) is int and 0 <= a < 92 for a in anchors),'anchor range')
    if family == 'III':
        return anchors == [88,91,90]
    if family == 'II':
        return len(anchors) == 4 and anchors[:2] == [90,91] and 0 <= anchors[2] < 22 and 22 <= anchors[3] < 44
    if family in ('C1','C2'):
        prefix = [88] if family == 'C1' else [88,90]
        if len(anchors) != len(prefix)+4 or anchors[:len(prefix)] != prefix:
            return False
        h,c,d,f = anchors[len(prefix):]
        return 0 <= h < 22 and 22 <= c < 44 and 44 <= d < 66 and 66 <= f < 88 and d-44 <= h and f-66 <= c-22
    if len(anchors) != 6:
        return False
    a,h,b,c,d,f = anchors
    return 0 <= a < h < 22 and 22 <= b < c < 44 and 44 <= d < 66 and 66 <= f < 88 and a <= d-44 <= h and b-22 <= f-66 <= c-22


def range_fields(manifest,record):
    pattern = RANGES[manifest['checker_kind']]
    matches = [pattern.fullmatch(line.strip()) for line in (ROOT/record['log']).read_text().splitlines()]
    matches = [match for match in matches if match]
    need(len(matches) == 1,'range receipt count')
    match = matches[0]
    fields = dict(zip(('start','stop','total','patterns','roots','search','bb','local'),
                      map(int,match.groups()[1:9])))
    fields['certified'] = int(match.group(10) or '0')
    return fields


def pattern_rows(manifest,family,lemma_counts):
    records = [record for record in manifest['runs'] if record['family'] == family]
    records.sort(key=lambda record:range_fields(manifest,record)['start'])
    expected_pattern = 0
    for record in records:
        fields = range_fields(manifest,record)
        path = checked_file(record.get('pattern_receipt'),ROOT)
        sums = Counter()
        rows = 0
        opener = gzip.open if path.suffix == '.gz' else open
        with opener(path,'rt',newline='') as stream:
            reader = csv.DictReader(stream,delimiter='\t')
            for raw in reader:
                need(raw.get('family',family) == family,'per-pattern family mismatch')
                pattern = int(raw['pattern'])
                need(pattern == fields['start']+rows == expected_pattern,
                     family+': missing, repeated, or out-of-order pattern')
                anchors = list(map(int,raw['anchors'].split(',')))
                need(anchors_valid(family,anchors),family+': invalid anchor-domain row')
                counts = {key:int(raw[key]) for key in ('roots','search','local','certified')}
                counts['bb'] = int(raw['bb'] if 'bb' in raw else raw['boxes'])
                need(all(value >= 0 for value in counts.values()),'negative pattern counter')
                need(counts['roots'] <= counts['search'] and counts['local'] <= counts['bb'] and
                     counts['bb']+counts['certified'] >= counts['roots'], 'inconsistent pattern counters')
                need(raw.get('status','PASS') == 'PASS' and int(raw.get('deferred','0')) == 0,
                     'unresolved or unfinished pattern')
                need(counts['certified'] == (lemma_counts[pattern] if family == 'N' else 0),
                     family+': per-pattern root-lemma count mismatch')
                if family != 'N':
                    need(counts['local'] == 0,'unexpected corner local acceptance')
                if 'possible_cells' in raw:
                    possible = int(raw['possible_cells'])
                    need(10-len(anchors) <= possible <= 484,'invalid initial candidate-cell count')
                else:
                    possible = None
                sums.update(counts)
                rows += 1
                expected_pattern += 1
                yield {'family':family,'pattern':pattern,'anchors':anchors,
                       'possible_cells':possible,**counts}
        need(rows == fields['patterns'] and expected_pattern == fields['stop'],
             family+': truncated per-pattern receipt')
        need(all(sums[counter] == fields[counter] for counter in sums),
             family+': per-pattern sums differ from final range counters')
    need(expected_pattern == range_fields(manifest,records[-1])['total'],
         family+': per-pattern cover is not complete')


def compare_patterns(primary,independent):
    lemma_manifest = json.loads((ROOT/'n10/local_cover/manifest.json').read_text())
    lemma_counts = Counter(record['pattern'] for record in lemma_manifest['roots'])
    summary = {}
    for family in FAMILIES:
        totals = Counter()
        for left,right in zip_longest(pattern_rows(primary,family,lemma_counts),
                                     pattern_rows(independent,family,lemma_counts)):
            need(left is not None and right is not None,family+': enumerator row counts differ')
            for key in ('family','pattern','anchors','roots','search','certified'):
                need(left[key] == right[key],family+': independent enumeration disagrees on '+key)
            if left['possible_cells'] is not None and right['possible_cells'] is not None:
                need(left['possible_cells'] == right['possible_cells'],'candidate-cell counts differ')
            totals['patterns'] += 1
            totals.update({key:left[key] for key in ('roots','search','certified')})
            totals['primary_boxes'] += left['bb']
            totals['independent_boxes'] += right['bb']
            totals['primary_local'] += left['local']
            totals['independent_local'] += right['local']
        summary[family] = dict(totals)
        print(f'INDEPENDENT_PATTERN_COMPARISON_PASS family={family} patterns={totals["patterns"]} roots={totals["roots"]}',flush=True)
    return summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--primary',type=Path,default=ROOT/'n10/runs/primary/manifest.json')
    parser.add_argument('--independent',type=Path,default=ROOT/'n10/runs/independent/manifest.json')
    parser.add_argument('--output',type=Path,default=ROOT/'n10/audit/complete_receipt.json')
    args = parser.parse_args()
    primary = json.loads(args.primary.read_text())
    independent = json.loads(args.independent.read_text())
    need(primary.get('checker_kind') == 'primary' and independent.get('checker_kind') == 'independent',
         'two different checker cohorts are required')
    need(primary['source']['path'] != independent['source']['path'] and
         primary['source']['sha256'] != independent['source']['sha256'], 'independent source identity')
    exact_checks = []
    for path in ('n10/seed/verify_n10.py','n10/audit/verify_seed_sympy.py',
                 'n10/audit/check_geometry_bounds.py','n10/audit/test_lp_certificate.py',
                 'n10/audit/test_run_manifest.py'):
        exact_checks.append(run_exact_check(path))
        print('EXACT_PACKAGE_CHECK_PASS '+path,flush=True)
    primary_result = validate(primary,required=FAMILIES)
    print('PRIMARY_COMPLETE_RANGE_ACCOUNTING_PASS',flush=True)
    independent_result = validate(independent,required=FAMILIES)
    print('INDEPENDENT_COMPLETE_RANGE_ACCOUNTING_PASS',flush=True)
    need(primary_result.get('root_lemmas') == independent_result.get('root_lemmas'),
         'source cohorts invoke different root lemmas')
    patterns = compare_patterns(primary,independent)
    count = sum(row['patterns'] for row in patterns.values())
    roots = sum(row['roots'] for row in patterns.values())
    lemma_count = primary_result['root_lemmas']['roots']
    need(sum(row['certified'] for row in patterns.values()) == lemma_count,
         'root-lemma invocation inventory differs from independently replayed lemmas')
    report = {'schema':1,'status':'UNRESTRICTED_N10_COMPUTER_ASSISTED_PROOF_PASS',
              'theorem':'H10 = the unique real root of 3456*A^3 - 1764*A^2 + 268*A - 9',
              'scope':'Fresh exact seed/LP replay plus complete recorded global runs and independent per-pattern agreement; C++ enumeration recomputation is a separate command.',
              'unresolved_regions':0,'patterns':count,'roots':roots,'root_lemmas':lemma_count,
              'families':patterns,'primary':primary_result,'independent':independent_result,
              'manifests':[{'path':str(path.relative_to(ROOT)),'sha256':digest(path)}
                           for path in (args.primary.resolve(),args.independent.resolve())],
              'exact_checks':exact_checks,'lean_verification':False,'ci_used':False}
    args.output.write_text(json.dumps(report,indent=2)+'\n')
    print(f'UNRESTRICTED_N10_COMPUTER_ASSISTED_PROOF_PASS patterns={count} roots={roots} root_lemmas={lemma_count} unresolved=0',flush=True)


if __name__ == '__main__':
    try:
        main()
    except (ValueError,KeyError,IndexError,TypeError,OSError) as error:
        print('FAIL_OR_INCOMPLETE: '+str(error),file=sys.stderr)
        sys.exit(2)
