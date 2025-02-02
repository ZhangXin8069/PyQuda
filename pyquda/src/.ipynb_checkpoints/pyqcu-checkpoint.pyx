cimport qcu
from pyquda.pointer cimport Pointer, Pointers, Pointerss

cdef class QcuParam:
    cdef qcu.QcuParam param

    def __init__(self):
        pass

    @property
    def lattice_size(self):
        return self.param.lattice_size

    @lattice_size.setter
    def lattice_size(self, value):
        self.param.lattice_size = value

def dslashQcu(Pointer fermion_out, Pointer fermion_in, Pointer gauge, QcuParam param, int parity):
    qcu.dslashQcu(fermion_out.ptr, fermion_in.ptr, gauge.ptr, &param.param, parity)

def mpiDslashQcu(Pointer fermion_out, Pointer fermion_in, Pointer gauge, QcuParam param, int parity, QcuParam grid):
    qcu.mpiDslashQcu(fermion_out.ptr, fermion_in.ptr, gauge.ptr, &param.param, parity, &grid.param)

def mpiCgQcu(Pointer fermion_out, Pointer fermion_in, Pointer gauge, QcuParam param, int parity, QcuParam grid):
    qcu.mpiCgQcu(fermion_out.ptr, fermion_in.ptr, gauge.ptr, &param.param, parity, &grid.param)

def testDslashQcu(Pointer fermion_out, Pointer fermion_in, Pointer gauge, QcuParam param, int parity):
    qcu.testDslashQcu(fermion_out.ptr, fermion_in.ptr, gauge.ptr, &param.param, parity)
