import numpy


class Pointer:
    def __init__(self, dtype: str):
        ...


class Pointers(Pointer):
    def __init__(self, dtype: str, n1: int):
        ...


class Pointerss(Pointer):
    def __cinit__(self, dtype: str, n1: int, n2: int):
        ...


def ndarrayDataPointer(ndarray: numpy.ndarray, as_void: bool = False) -> Pointer:
    ...
