#!/usr/bin/env python
from typing import *

def febonacce(k:int)-> Generator[int,None,None]:
    """
    @return List[int,...]
    """
    a:int = 1
    b:int = 1
    for _ in range(k):
        yield a
        a , b = b , a+b

if __name__ == "__main__":
    for _ in febonacce(10):
        sum = _
    print(f"{sum}")
    pass

