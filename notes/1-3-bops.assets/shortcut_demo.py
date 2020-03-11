#!/usr/bin/env python


def logical_and(left: Exp, right: Exp) -> int:
    if left.eval() != 0:
        if right.eval() != 0:
            return 1
        else:
            return 0
    else:
        # right exp was short-cut
        # when left.eval == 0
        return 0


def logical_or(left: Exp, right: Exp) -> int:
    if left.eval() == 0:
        if right.eval() == 0:
            return 0
        else:
            return 1
    else:
        # right exp was short-cut
        # when left.eval != 0
        return 1
