# Sparse type

The Sparse Type module provides tools for creating and manipulating sparse matrices in Nelson.

It supports efficient storage and computation for matrices with a large number of zero elements, including conversion between sparse and full representations, generation of special sparse matrices, and access to nonzero elements.

This module enables memory-efficient handling of large datasets and optimized numerical operations on sparse structures.

## Functions

- [IJV](IJV.md) - Returns I,J,V triplets from a sparse matrix.
- [full](full.md) - Sparse to full matrix conversion.
- [nnz](nnz.md) - Return the number of nonzero elements.
- [nzmax](nzmax.md) - Reserved size for nonzero elements.
- [sparse](sparse.md) - Sparse matrix definition.
- [speye](speye.md) - Sparse identity matrix.
- [spones](spones.md) - Replaces non zero sparse matrix elements with ones.
- [sprand](sprand.md) - Sparse uniformly distributed random matrix.
- [sprandn](sprandn.md) - Sparse normally distributed random matrix.
