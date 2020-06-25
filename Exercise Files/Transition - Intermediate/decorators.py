# -*- coding: utf-8 -*-

from time import time

def monitor(func):

    def starter(*args, **kwargs):
        t1 = time()
        func(*args, **kwargs)
        t2 = time()
        t = t2 - t1
        print('It took: ', t, 'to run the function')
        
    return starter

@monitor
def misty_func():
    print('Hello')

misty_func()
