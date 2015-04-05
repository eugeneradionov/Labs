def mrange(start,stop=None,step=1):
    """
    >>> mrange(10,0,-1)
    [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    """
    result = []
    if stop == None:
        i = 0
        while i < start:
            result.append(i)
            i = i+step    
    else:
        i = start
        while i < stop or step < 0 and i > stop:
            result.append(i)
            i = i+step
    
    return result
def _test():
    import doctest
    doctest.testmod()
_test()
