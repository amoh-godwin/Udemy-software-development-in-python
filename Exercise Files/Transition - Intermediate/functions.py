# -*- coding: utf-8 -*-

def converter(**options):
    """
    This converts files
    """

    for f in options:
        print(f, ':', options[f])


converter()