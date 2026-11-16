"""Exact arithmetic replay for SCALAR_AREA_INTERVALS.md.

No geometric facts are inferred here. By default the caller must supply:
    initial_check(reference, raw_bound_record)
    relation_check(index, raw_relation_record)
Each callback must raise on an unjustified geometric premise; returning
False also rejects it. A caller that checks geometry separately must
explicitly pass arithmetic_only=True.

The packet is a literal JSON object with initial, relations, updates,
and either contradiction or targets. All retained lower bounds must be
positive. Values are exact rational strings or integers; floats are
rejected. See SCALAR_AREA_INTERVALS.md Section 8 for the full format.
"""
from fractions import Fraction
import json


def _need(condition, message):
    if not condition:
        raise ValueError(message)


def _rational(value):
    if isinstance(value, Fraction):
        return value
    if type(value) is int:
        return Fraction(value)
    if isinstance(value, str):
        return Fraction(value)
    raise TypeError("Use a rational string or integer, never a float")


def _name(value):
    _need(isinstance(value, str) and value and value.strip() == value,
          "Invalid variable or reference name")
    _need(not any(ch.isspace() for ch in value), "Whitespace in a name")
    return value


def _bound(record):
    _need(isinstance(record, dict), "A bound must be an object")
    triangle = _name(record["triangle"])
    side = record["side"]
    _need(side in ("lo", "hi"), "Invalid bound direction")
    value = _rational(record["value"])
    if side == "lo":
        _need(value > 0, "Retained lower bounds must be positive")
    return {"triangle": triangle, "side": side, "value": value}


def _positive_divide(numerator, denominator):
    _need(denominator > 0, "A required denominator is not positive")
    return numerator / denominator


def _relation(row):
    _need(isinstance(row, list) and row, "A relation must be a nonempty list")
    kind = row[0]
    if kind == "fan":
        _need(len(row) == 5, "A fan has four area variables")
        names = list(map(_name, row[1:5]))
        _need(len(set(names)) == 4, "Fan variables must be distinct")
        return kind, names
    if kind == "plu":
        _need(len(row) == 7, "A Pluecker relation has six area variables")
        names = list(map(_name, row[1:7]))
        _need(len(set(names)) == 6, "Pluecker variables must be distinct")
        return kind, names
    if kind == "quad":
        _need(len(row) >= 4, "Incomplete quadrilateral cost")
        one, two = map(_name, row[1:3])
        cost = _rational(row[3])
        _need(one != two and cost > 0, "Invalid quadrilateral cost")
        return kind, (one, two, cost)
    if kind == "support":
        _need(len(row) >= 5, "Incomplete support relation")
        names = list(map(_name, row[1:4]))
        cost = _rational(row[4])
        _need(len(set(names)) == 3 and cost > 0, "Invalid support relation")
        return kind, (*names, cost)
    _need(kind == "linear" and len(row) >= 3, "Unknown relation kind")
    _need(isinstance(row[1], dict), "Linear coefficients must be an object")
    coefficients = {}
    for name, value in row[1].items():
        name, value = _name(name), _rational(value)
        if value:
            coefficients[name] = value
    _need(coefficients, "A linear relation needs a nonzero coefficient")
    return kind, (coefficients, _rational(row[2]))


def _rule(parsed, rule, target, side):
    """Return the ordered source roles and their exact consequence."""
    kind, data = parsed
    if kind == "fan":
        outer, *fans = data
        if rule in ("sum", "upper_sum"):
            wanted = "lo" if rule == "sum" else "hi"
            _need(target == outer and side == wanted, "Wrong fan sum target")
            return [(name, side) for name in fans], lambda v: sum(v)
        _need(rule in ("sub", "lower_sub"), "Unknown fan rule")
        wanted = "hi" if rule == "sub" else "lo"
        _need(target in fans and side == wanted, "Wrong fan subtraction target")
        other_side = "lo" if side == "hi" else "hi"
        roles = [(outer, side)] + [
            (name, other_side) for name in fans if name != target]
        return roles, lambda v: v[0] - sum(v[1:])
    if kind == "plu":
        x, y, u, v, w, z = data
        if rule in ("sumlo", "sumhi"):
            wanted = "lo" if rule == "sumlo" else "hi"
            _need(target in (x, y) and side == wanted,
                  "Wrong isolated-product target")
            other = y if target == x else x
            opposite = "hi" if side == "lo" else "lo"
            roles = [(name, side) for name in (u, v, w, z)] + [
                (other, opposite)]
            return roles, lambda a: _positive_divide(
                a[0] * a[1] + a[2] * a[3], a[4])
        _need(rule in ("diff", "diffhi"), "Unknown Pluecker rule")
        wanted = "lo" if rule == "diff" else "hi"
        choices = {u: (v, w, z), v: (u, w, z),
                   w: (z, u, v), z: (w, u, v)}
        _need(target in choices and side == wanted,
              "Wrong peripheral-product target")
        other, first, second = choices[target]
        opposite = "hi" if side == "lo" else "lo"
        roles = [(x, side), (y, side), (first, opposite),
                 (second, opposite), (other, opposite)]

        def difference(a):
            value = _positive_divide(
                a[0] * a[1] - a[2] * a[3], a[4])
            return max(Fraction(0), value) if rule == "diffhi" else value
        return roles, difference
    if kind == "quad":
        one, two, cost = data
        _need(rule == "quad" and side == "lo" and target in (one, two),
              "Wrong quadrilateral-cost update")
        return [(two if target == one else one, "hi")], lambda v: cost - v[0]
    if kind == "support":
        x, y, z, cost = data
        _need(rule in ("support_x", "support_y", "support_z"),
              "Unknown support rule")
        wanted_target = {"support_x": x, "support_y": y, "support_z": z}[rule]
        _need(target == wanted_target
              and side == ("hi" if rule == "support_x" else "lo"),
              "Wrong support target")
        if rule == "support_x":
            return [(z, "hi"), (y, "hi")], lambda v: _positive_divide(
                cost * v[0], cost - v[1])
        if rule == "support_y":
            return [(x, "lo"), (z, "hi")], lambda v: cost * (
                1 - _positive_divide(v[1], v[0]))
        return [(x, "lo"), (y, "hi")], lambda v: v[0] * (1 - v[1] / cost)
    coefficients, rhs = data
    _need(rule == "linear" and target in coefficients, "Wrong linear update")
    coefficient = coefficients[target]
    _need(side == ("lo" if coefficient > 0 else "hi"),
          "Wrong direction after division by a signed coefficient")
    others = sorted(name for name in coefficients if name != target)
    roles = [(name, "hi" if coefficients[name] > 0 else "lo")
             for name in others]

    def isolate(values):
        maximum = sum(coefficients[name] * value
                      for name, value in zip(others, values))
        return (rhs - maximum) / coefficient
    return roles, isolate


def replay_area_packet(packet, *, initial_check=None, relation_check=None,
                       arithmetic_only=False):
    """Replay an immutable area packet and return exact bounds and counts.

    Geometry callbacks receive the original literal records. They must
    raise on invalid initial witnesses or invalid relation geometry.
    With arithmetic_only=True, this function certifies arithmetic only.
    It never claims that geometric premises have been checked by default.
    """
    _need(type(arithmetic_only) is bool, "arithmetic_only must be a bool")
    _need(isinstance(packet, dict), "The packet must be an object")
    if not arithmetic_only:
        _need(callable(initial_check) and callable(relation_check),
              "Supply both geometry callbacks or set arithmetic_only=True")
    for callback in (initial_check, relation_check):
        _need(callback is None or callable(callback), "Invalid callback")
    initial = packet["initial"]
    relations = packet["relations"]
    updates = packet["updates"]
    _need(isinstance(initial, dict) and isinstance(relations, list)
          and isinstance(updates, list), "Invalid packet collections")
    bounds = {}
    for reference, record in initial.items():
        reference = _name(reference)
        _need(reference not in bounds, "Repeated initial reference")
        bounds[reference] = _bound(record)
        if initial_check is not None:
            _need(initial_check(reference, record) is not False,
                  "Initial geometry callback rejected a bound")
    parsed = []
    for index, relation in enumerate(relations):
        parsed.append(_relation(relation))
        if relation_check is not None:
            _need(relation_check(index, relation) is not False,
                  "Relation geometry callback rejected a premise")
    for update in updates:
        _need(isinstance(update, dict), "An update must be an object")
        reference = _name(update["id"])
        _need(reference not in bounds, "A reference cannot be overwritten")
        index = update["relation"]
        _need(type(index) is int and 0 <= index < len(parsed),
              "Invalid relation index")
        result = _bound(update)
        roles, evaluate = _rule(parsed[index], update["rule"],
                                result["triangle"], result["side"])
        sources = update["sources"]
        _need(isinstance(sources, list), "Sources must be an ordered list")
        _need(all(isinstance(ref, str) and ref in bounds for ref in sources),
              "A source reference is missing or forward-referenced")
        actual = [bounds[ref] for ref in sources]
        _need([(item["triangle"], item["side"]) for item in actual] == roles,
              "A source has the wrong variable or bound direction")
        values = [item["value"] for item in actual]
        if parsed[index][0] in ("plu", "support"):
            _need(all(value > 0 for value in values),
                  "Nonlinear source bounds must be positive")
        exact = evaluate(values)
        if result["side"] == "lo":
            _need(result["value"] <= exact, "Lower bound rounded inward")
        else:
            _need(result["value"] >= exact, "Upper bound rounded inward")
        bounds[reference] = result
    targets = packet.get("targets", {})
    _need(isinstance(targets, dict), "Targets must be an object")
    selected = {}
    for reference, record in targets.items():
        reference = _name(reference)
        _need(reference in bounds, "Unknown target reference")
        expected = _bound(record)
        _need(bounds[reference] == expected, "Target does not match its bound")
        selected[reference] = bounds[reference]
    end = packet.get("contradiction")
    gap = None
    if end is not None:
        _need(isinstance(end, dict), "Contradiction must be an object")
        triangle = _name(end["triangle"])
        lower_ref, upper_ref = end["lower"], end["upper"]
        _need(lower_ref in bounds and upper_ref in bounds,
              "Unknown contradiction reference")
        lower, upper = bounds[lower_ref], bounds[upper_ref]
        _need(lower["triangle"] == upper["triangle"] == triangle
              and lower["side"] == "lo" and upper["side"] == "hi",
              "Contradiction compares incompatible bounds")
        gap = lower["value"] - upper["value"]
        _need(gap > 0, "The final bounds do not contradict each other")
    _need(end is not None or selected, "No contradiction or selected target")
    return {"bounds": bounds, "targets": selected, "contradiction_gap": gap,
            "initial_count": len(initial), "relation_count": len(relations),
            "update_count": len(updates),
            "geometry_mode": "arithmetic-only" if arithmetic_only else
                             "caller-supplied geometry callbacks"}


def parse_area_packet(text):
    """Parse a literal JSON packet, rejecting floats and duplicate keys."""
    def reject_number(value):
        raise ValueError("Use an exact rational string instead of " + value)

    def unique_object(items):
        result = {}
        for key, value in items:
            _need(key not in result, "Duplicate JSON key: " + key)
            result[key] = value
        return result

    packet = json.loads(text, parse_float=reject_number,
                        parse_constant=reject_number,
                        object_pairs_hook=unique_object)
    _need(isinstance(packet, dict), "The JSON packet must be an object")
    return packet
