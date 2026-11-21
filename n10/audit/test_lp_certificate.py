#!/usr/bin/env python3
"""Adversarial tests for the exact LP proof-tree checker, including -O mode."""
from copy import deepcopy
from pathlib import Path
import json
import unittest
from verify_lp_certificate import ROOT, root_key, verify


class LPCertificateTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.path = ROOT/'n10/local_cover/certificates/N_57964_147_336_417_480.json'
        cls.original = json.loads(cls.path.read_text())
        cls.expected = root_key(cls.original['anchors'],cls.original['free'])

    def setUp(self):
        self.proof = deepcopy(self.original)

    def fails(self):
        with self.assertRaises(ValueError):
            verify(self.proof,self.expected)

    def first_change(self):
        return next(step['changes'][0] for node in self.proof['nodes'] for step in node['steps'])

    def test_valid_complete_tree(self):
        self.assertEqual(verify(self.proof,self.expected)['nodes'],11)

    def test_negative_dual_weight(self):
        self.first_change()['weights'][0][1] = -1
        self.fails()

    def test_zero_dual_normalization(self):
        self.first_change()['K'] = 0
        self.fails()

    def test_unknown_dual_row(self):
        self.first_change()['weights'][0][0] = 120
        self.fails()

    def test_wrong_endpoint(self):
        change = self.first_change()
        change['endpoint'] += change['sign']
        self.fails()

    def test_missing_node(self):
        self.proof['nodes'].pop()
        self.fails()

    def test_box_hole(self):
        node = next(node for node in self.proof['nodes'] if node['id'] != 0)
        node['lo'][0] += 1
        self.fails()

    def test_missing_child(self):
        node = next(node for node in self.proof['nodes'] if 'split' in node)
        node['split']['right'] = 10**9
        self.fails()

    def test_duplicate_child(self):
        node = next(node for node in self.proof['nodes'] if 'split' in node)
        node['split']['right'] = node['split']['left']
        self.fails()

    def test_unreachable_extra_node(self):
        node = deepcopy(self.proof['nodes'][0])
        node['id'] = 10**9
        self.proof['nodes'].append(node)
        self.fails()

    def test_wrong_external_root(self):
        anchors,cells = self.expected
        cells = list(cells)
        cells[-1] += 1
        with self.assertRaises(ValueError):
            verify(self.proof,(anchors,tuple(cells)))

    def test_wrong_target(self):
        self.proof['num'] += 1
        self.fails()

    def test_incomplete_status(self):
        self.proof['status'] = 'INCOMPLETE'
        self.fails()

    def test_forged_farkas(self):
        leaf = next(node['leaf'] for node in self.proof['nodes'] if node.get('leaf',{}).get('kind') == 'farkas')
        leaf['weights'] = []
        self.fails()

    def test_incorrect_counter(self):
        self.proof['counts']['local'] += 1
        self.fails()


if __name__ == '__main__':
    unittest.main()
