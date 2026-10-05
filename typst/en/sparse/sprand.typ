#import "nelson_help.typ": *

= sprand <sparse:sprand>

Sparse uniformly distributed random matrix.

== Syntax

- #raw("R = sprand(S)");
- #raw("R = sprand(m,n,density)");

== Input argument

/ S: Input matrix
/ m: Number of rows
/ density: Density of the non-zero elements

== Output argument

/ S: a sparse matrix.

== Description

#strong[R \= sprand(S)]; creates a sparse matrix that has the same sparsity pattern as the matrix S, but with uniformly distributed random entries.

 #strong[R \= sprand(m,n,density)]; creates a random m-by-n sparse matrix with approximately density\*m\*n uniformly distributed nonzero entries for density in the interval \[0,1\].


== Examples

sprand with matrix pattern

``````matlab
S = [1 0 0; 0 1 0; 0 0 1]; R = sprand(S)
``````

sprand with size and density

``````matlab
R = sprand(5, 5, 0.2)
``````


== See also

#nlink(<sparse:sprandn>)[sprandn];, #nlink(<random:rng>)[rng];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
