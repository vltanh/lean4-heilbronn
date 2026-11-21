#!/usr/bin/env python3
"""Bind the two completed, frozen checker cohorts to their stored proof inputs.

This creates metadata from the final run layout; it does not run a global
enumerator. Every selected log must already contain a successful final range.
Use verify_complete.py after creating these manifests.
"""
from pathlib import Path
import json
from verify_run_manifest import ROOT, RANGES, checked_file, digest, need, validate


def hashed(path):
    path = Path(path)
    absolute = ROOT/path
    need(absolute.is_file(), 'missing package input: '+str(path))
    return {'path':str(path),'sha256':digest(absolute)}


def main():
    certificate_manifest = json.loads((ROOT/'n10/local_cover/manifest.json').read_text())
    dependencies = [
        'n10/seed/LOCAL_THEOREM.md','n10/seed/verify_n10.py','n10/seed/local_dual_data.py',
        *[f'n10/seed/dual_data/{i:02d}.b64' for i in range(8)],
        'n10/audit/verify_seed_sympy.py','n10/audit/check_geometry_bounds.py',
        'n10/audit/verify_lp_certificate.py','n10/audit/verify_run_manifest.py',
        'n10/audit/verify_complete.py','n10/audit/test_lp_certificate.py',
        'n10/audit/test_run_manifest.py','n10/audit/GEOMETRY_AUDIT.md',
        'n10/local_cover/manifest.json','n10/local_cover/root_lemmas.txt',
        certificate_manifest['generator']['path'],
        *[entry['path'] for entry in certificate_manifest['journals']],
        *[entry['certificate'] for entry in certificate_manifest['roots']],
    ]
    dependencies = [hashed(path) for path in sorted(set(dependencies))]
    root_lemmas = {'manifest':hashed('n10/local_cover/manifest.json'),
                   'table':hashed('n10/local_cover/root_lemmas.txt'),
                   'verifier':hashed('n10/audit/verify_lp_certificate.py')}
    cohorts = {
        'primary': {
            'source':'n10/global/global_cover_certified.cpp',
            'build':'n10/runs/primary/build.json',
            'prefix':'n10/runs/primary/',
            'runs':['III','II','C2','C1','N_0_100000','N_100000_300000','N_300000_835027'],
        },
        'independent': {
            'source':'n10/audit/independent_cover.cpp',
            'build':'n10/runs/independent_final_build.json',
            'prefix':'n10/runs/independent_final_',
            'runs':['III','II','C2','C1','N_0_400000','N_400000_835027'],
        },
    }
    for kind,cohort in cohorts.items():
        source = hashed(cohort['source'])
        build = hashed(cohort['build'])
        metadata = json.loads((ROOT/cohort['build']).read_text())
        need(metadata.get('source') == source['path'] and
             (metadata.get('source_sha256') or metadata.get('sha256')) == source['sha256'],
             kind+': frozen build source differs from current source')
        manifest = {'schema':1,'checker_kind':kind,'source':source,
                    'dependencies':dependencies+[build], 'build':build,
                    'root_lemmas':root_lemmas,'runs':[]}
        for name in cohort['runs']:
            family = name.split('_')[0]
            log = hashed(cohort['prefix']+name+'.log')
            pattern_receipt = hashed(cohort['prefix']+name+'.tsv.gz')
            lines = (ROOT/log['path']).read_text().splitlines()
            need(sum(bool(RANGES[kind].fullmatch(line)) for line in lines) == 1,
                 kind+'/'+name+': missing or repeated successful range')
            manifest['runs'].append({'family':family,'log':log['path'],
                'log_sha256':log['sha256'],'exit_code':0,'source_sha256':source['sha256'],
                'pattern_receipt':pattern_receipt})
        validate(manifest,required=('III','II','C2','C1','N'))
        output = ROOT/'n10'/'runs'/kind/'manifest.json'
        output.parent.mkdir(parents=True,exist_ok=True)
        output.write_text(json.dumps(manifest,indent=2)+'\n')
        print(f'{kind.upper()}_MANIFEST_CREATED {output.relative_to(ROOT)}')


if __name__ == '__main__':
    main()
