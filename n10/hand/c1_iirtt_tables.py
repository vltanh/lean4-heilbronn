"""Read the literal stage and catalogue records in C1_IIRTT_TABLES."""
import json
from pathlib import Path

from audit_c1_biirr import exact_object as unique_pairs


def exact_object(entries):
    return unique_pairs(list(entries))


def records(path):
    title, blank, opening, *data, closing = path.read_text().splitlines()
    assert title.startswith("# ") and blank == "" and opening == "```jsonl" and closing == "```"
    return [json.loads(line, object_pairs_hook=exact_object) for line in data]


class Tables:
    def __init__(self, folder=None):
        self.folder = Path(folder) if folder else Path(__file__).with_name("C1_IIRTT_TABLES")
        self.tree = exact_object((name, (kind, split, domain))
                                 for name, kind, split, domain in records(self.folder/"tree.md"))
        domain = records(self.folder/"domain.md")
        self.domain = exact_object((row[0], row[1]) for row in domain if len(row) == 2)
        self.polynomials = exact_object((row[1], row[2]) for row in domain if row[0] == "determinant")
        assert len(domain) == len(self.domain) + len(self.polynomials)
        self.catalogues = {}
        for kind in ("deduction", "initial", "relation", "update", "bounds"):
            catalogue = []
            for i, path in enumerate(sorted(self.folder.glob(kind+"-*.md"))):
                assert path.name == f"{kind}-{i:03d}.md" and len(catalogue) == i*1000
                for number, row in records(path):
                    assert number == len(catalogue)
                    catalogue.append(row)
            self.catalogues[kind] = catalogue

    def entries(self, kind, sequence):
        table = self.catalogues[kind]
        for i in sequence:
            assert type(i) is int and 0 <= i < len(table)
            yield table[i]

    def node(self, name):
        stages, weights, lift = [], [], None
        for key, *body in records(self.folder/(name+".md")):
            if key == "stage":
                source, box, assign = body
                stage = dict(boxRef=source, box=box, assign=assign, id=f"{name}-{len(stages)}",
                             labels=self.domain["labels"], vars=self.domain["coordinates"],
                             polynomials=self.polynomials, steps=[], terminal=None, area=None)
                stages.append(stage)
                trace = []
                continue
            assert stages and lift is None
            if key in ("signs", "meshes"):
                assert key not in stage and len(body)==1
                stage[key] = body[0]
            elif key == "steps":
                stage["steps"].extend(self.entries("deduction", body))
            elif key == "geometry":
                assert stage["terminal"] is None and len(body)==1
                stage["terminal"] = body[0]
            elif key in ("initial", "relations", "updates", "end", "final"):
                if stage["area"] is None:
                    stage["area"] = dict(initial={}, relations=[], updates=[], end=None)
                a = stage["area"]
                if key == "initial":
                    for ref, tri, side, val, witness in self.entries("initial",body):
                        assert ref not in a["initial"]
                        a["initial"][ref] = dict(triangle=tri, side=side, value=val, witness=witness)
                elif key == "relations":
                    a[key].extend(dict(rel=r, witness=w) for r,w in self.entries("relation", body))
                elif key == "updates":
                    for ref, ri, rule, tri, side, value, deps in self.entries("update",body):
                        a[key].append(dict(id=ref, relation=ri, rule=rule, triangle=tri,
                                           side=side, value=value, sources=deps))
                elif key == "end":
                    assert len(body)==1 and a["end"] is None
                    a["end"] = body[0]
                else:
                    ends = a.setdefault("final", {})
                    for tri, lo, hi in self.entries("bounds", body):
                        assert tri not in ends
                        ends[tri] = dict(lo=lo, hi=hi)
            elif key == "tighten":
                factor, target, old, lines, raw, new = body
                trace.append(dict(factor=factor, target=target, old=old, lines=lines, raw=raw, new=new))
            elif key == "coordinate":
                lo, hi, end = body
                assert key not in stage
                stage[key] = dict(low=lo, high=hi, contradiction=end, trace=trace)
            elif key == "weight":
                assert len(body)==2
                weights.append(body)
            elif key == "sum":
                mode, roll, const, res, hi = body
                lift = dict(mode=mode, roll=roll, constant=const, residual=res, upper=hi, weights=weights)
            else:
                raise ValueError(key)
        assert stages and (not weights or lift)
        return stages, lift
