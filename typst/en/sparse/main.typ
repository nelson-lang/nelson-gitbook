#import "nelson_help.typ": *

= Sparse type

The Sparse Type module provides tools for creating and manipulating sparse matrices in Nelson.

 It supports efficient storage and computation for matrices with a large number of zero elements, including conversion between sparse and full representations, generation of special sparse matrices, and access to nonzero elements.

 This module enables memory-efficient handling of large datasets and optimized numerical operations on sparse structures.

== Functions

- #nlink(<sparse:IJV>)[IJV]: Returns I,J,V triplets from a sparse matrix.
- #nlink(<sparse:full>)[full]: Sparse to full matrix conversion.
- #nlink(<sparse:nnz>)[nnz]: Return the number of nonzero elements.
- #nlink(<sparse:nonzeros>)[nonzeros]: Nonzero matrix elements.
- #nlink(<sparse:nzmax>)[nzmax]: Reserved size for nonzero elements.
- #nlink(<sparse:spalloc>)[spalloc]: Create a sparse matrix with allocated storage.
- #nlink(<sparse:sparse>)[sparse]: Sparse matrix definition.
- #nlink(<sparse:spaugment>)[spaugment]: Form a sparse augmented least squares matrix.
- #nlink(<sparse:spconvert>)[spconvert]: Convert indexed data to a sparse matrix.
- #nlink(<sparse:spdiags>)[spdiags]: Extract or create sparse matrix diagonals.
- #nlink(<sparse:speye>)[speye]: Sparse identity matrix.
- #nlink(<sparse:spfun>)[spfun]: Apply a function to the nonzero elements of a sparse matrix.
- #nlink(<sparse:spones>)[spones]: Replaces non zero sparse matrix elements with ones.
- #nlink(<sparse:sprand>)[sprand]: Sparse uniformly distributed random matrix.
- #nlink(<sparse:sprandn>)[sprandn]: Sparse normally distributed random matrix.
- #nlink(<sparse:sprank>)[sprank]: Structural rank of a matrix.
- #nlink(<sparse:symrcm>)[symrcm]: Reverse Cuthill-McKee permutation.


#nested[
#pagebreak(weak: true)
#include "IJV.typ"
#pagebreak(weak: true)
#include "full.typ"
#pagebreak(weak: true)
#include "nnz.typ"
#pagebreak(weak: true)
#include "nonzeros.typ"
#pagebreak(weak: true)
#include "nzmax.typ"
#pagebreak(weak: true)
#include "spalloc.typ"
#pagebreak(weak: true)
#include "sparse.typ"
#pagebreak(weak: true)
#include "spaugment.typ"
#pagebreak(weak: true)
#include "spconvert.typ"
#pagebreak(weak: true)
#include "spdiags.typ"
#pagebreak(weak: true)
#include "speye.typ"
#pagebreak(weak: true)
#include "spfun.typ"
#pagebreak(weak: true)
#include "spones.typ"
#pagebreak(weak: true)
#include "sprand.typ"
#pagebreak(weak: true)
#include "sprandn.typ"
#pagebreak(weak: true)
#include "sprank.typ"
#pagebreak(weak: true)
#include "symrcm.typ"
]
