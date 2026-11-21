#!/usr/bin/env python3
"""Adversarial completion-accounting tests; these are not geometric proofs."""
from copy import deepcopy
from pathlib import Path
import hashlib
import tempfile
import unittest
from verify_run_manifest import FAMILIES, validate


class ManifestTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.root = Path(self.temporary.name)
        source = self.root/'checker.cpp'
        source.write_text('// Synthetic fixture: no geometric claim.\n')
        self.sha = hashlib.sha256(source.read_bytes()).hexdigest()
        self.manifest = {'schema':1,'source':{'path':'checker.cpp','sha256':self.sha},
                         'dependencies':[],'runs':[]}
        for family in FAMILIES:
            self.add_run(family,0,2,2,complete=True)

    def tearDown(self):
        self.temporary.cleanup()

    def add_run(self,family,start,stop,total,complete=False):
        name = f'{family}-{len(self.manifest["runs"])}.log'
        text = f'{family}_RANGE_PASS start={start} stop={stop} total={total} patterns={stop-start} roots=0 search=0 bb=0 local=0\n'
        if complete:
            text += f'{family}_COMPLETE_PASS\n'
        path = self.root/name
        path.write_text(text)
        record = {'family':family,'log':name,'log_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),
                  'exit_code':0,'source_sha256':self.sha}
        self.manifest['runs'].append(record)
        return record

    def replace_log(self,record,text):
        path = self.root/record['log']
        path.write_text(text)
        record['log_sha256'] = hashlib.sha256(path.read_bytes()).hexdigest()

    def check_fails(self,manifest=None):
        with self.assertRaises(ValueError):
            validate(manifest or self.manifest,self.root,FAMILIES)

    def test_complete(self):
        self.assertTrue(validate(self.manifest,self.root,FAMILIES)['all_families_complete'])

    def test_disjoint_split(self):
        self.manifest['runs'] = self.manifest['runs'][1:]
        self.add_run('III',0,1,2)
        self.add_run('III',1,2,2)
        self.assertTrue(validate(self.manifest,self.root,FAMILIES)['all_families_complete'])

    def test_independent_kind(self):
        self.manifest['checker_kind'] = 'independent'
        for record in self.manifest['runs']:
            text = (self.root/record['log']).read_text().replace('_RANGE_PASS','_INDEPENDENT_RANGE_PASS').replace('_COMPLETE_PASS','_INDEPENDENT_COMPLETE_PASS')
            self.replace_log(record,text)
        self.assertTrue(validate(self.manifest,self.root,FAMILIES)['all_families_complete'])

    def test_mixed_checker_kind(self):
        self.manifest['checker_kind'] = 'independent'
        self.check_fails()

    def test_missing_family(self):
        self.manifest['runs'].pop()
        self.check_fails()

    def test_gap(self):
        self.manifest['runs'] = self.manifest['runs'][1:]
        self.add_run('III',1,2,2)
        self.check_fails()

    def test_overlap(self):
        self.add_run('III',1,2,2)
        self.check_fails()

    def test_duplicate_receipt(self):
        self.manifest['runs'].append(deepcopy(self.manifest['runs'][0]))
        self.check_fails()

    def test_inconsistent_total(self):
        self.manifest['runs'] = self.manifest['runs'][1:]
        self.add_run('III',0,1,2)
        self.add_run('III',1,3,3)
        self.check_fails()

    def test_out_of_range(self):
        self.manifest['runs'] = self.manifest['runs'][1:]
        self.add_run('III',0,3,2)
        self.check_fails()

    def test_false_completion(self):
        self.manifest['runs'] = self.manifest['runs'][1:]
        self.add_run('III',0,1,2,complete=True)
        self.check_fails()

    def test_process_failed(self):
        self.manifest['runs'][0]['exit_code'] = 2
        self.check_fails()

    def test_failure_marker(self):
        record = self.manifest['runs'][0]
        self.replace_log(record,'FAIL_OR_INCOMPLETE: stopped\n'+(self.root/record['log']).read_text())
        self.check_fails()

    def test_source_mismatch(self):
        self.manifest['runs'][0]['source_sha256'] = '0'*64
        self.check_fails()

    def test_log_tampering(self):
        record = self.manifest['runs'][0]
        with (self.root/record['log']).open('a') as stream:
            stream.write('changed\n')
        self.check_fails()


if __name__ == '__main__':
    unittest.main()
