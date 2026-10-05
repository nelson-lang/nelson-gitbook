#import "../nelson_help.typ": *

= gallery <elementary_functions:6_matrix_generation.gallery>

Generate commonly used test matrices and data for numerical experiments

== Syntax

- #raw("[A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn)");
- #raw("[A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn,typename)");
- #raw("A = gallery(k)");
- #raw("A = gallery(\"circul\", v)");
- #raw("[v,beta] = gallery(\"house\", x)");
- #raw("[A,beta] = gallery(\"ipjfact\", n, k)");
- #raw("A = gallery(\"cauchy\", x, y)");

== Input argument

/ matrixname: name of the matrix family to generate (string or character vector), e.g. "circul", "cauchy", "grcar", "minij", "dramadah", "house", "ipjfact"
/ P1, P2, ..., Pn: family-dependent parameters: scalars, vectors or matrices that determine size and entries (for example#raw("n");, vectors#raw("v");,#raw("x");,#raw("y");, or option flags)
/ n: positive integer specifying matrix order or size
/ v, x, y: vectors used as parameters (for example first row for circulant, point locations for chebvand, or Cauchy parameters)
/ k: option or small integer parameter controlling family behaviour (for example number of superdiagonals for#strong[grcar]; or variant selectors for #strong[dramadah];)
/ typename: optional output data type: "double" (default) or "single"

== Output argument

/ A1,A2,...,Am: one or more matrices or arrays produced by the chosen family
/ A: single matrix or multidimensional array when one output is requested
/ v,beta,s: Householder outputs:#raw("v");(vector),#raw("beta");(scalar), and optional#raw("s");returned by #strong[house];
/ beta: determinant or scalar output for families that return it explicitly (for example #strong[ipjfact]; returns determinant#raw("beta");)

== Description

The #strong[gallery]; function returns a collection of standard test matrices and generated data used to illustrate numerical linear algebra concepts, test algorithms, and reproduce textbook examples.

 Use the #strong[matrixname]; argument to select a family; additional parameters (sizes, vectors, options) depend on the chosen family.

 Typical uses: study eigenvalue sensitivity and conditioning, exercise solvers with structured matrices (Toeplitz, Hankel, circulant), generate random or specially structured matrices with prescribed singular\/eigenvalue properties, or obtain canonical examples for teaching and tests.

 The optional #strong[typename]; forces the numeric output type.

 If omitted, the output type is inferred from the inputs: presence of a#raw("single");input yields#raw("single");, otherwise outputs are#raw("double");.

 

#table(
  columns: 3,
  table.header([Name], [Syntax], [Notes], ),
  [gallery(3)], [#raw("A = gallery(3)");], [Classic ill-conditioned 3×3 test matrix; demonstrates eigenvalue sensitivity.], 
  [gallery(5)], [#raw("A = gallery(5)");], [5×5 example with exact characteristic polynomial \\(\\lambda^5\=0\\); numerically the eigenvalues are small and sensitive.], 
  [circul], [#raw("A = gallery(\"circul\", v)");], [Circulant matrix: rows are cyclic shifts of#raw("v");; eigenvalues are the DFT of#raw("v");.], 
  [grcar], [#raw("A = gallery(\"grcar\", n, k)");], [Toeplitz with -1 on subdiagonal and 1's on main and k superdiagonals; useful for pseudospectra examples.], 
  [minij], [#raw("A = gallery(\"minij\", n)");], [SPD matrix with #raw("A(i,j)=min(i,j)");; inverse is tridiagonal (second-difference structure).], 
  [dramadah], [#raw("A = gallery(\"dramadah\", n, k)");], [Binary (0\/1) families; certain k yield unimodular Toeplitz matrices with integer inverses.], 
  [house], [#raw("[v,beta] = gallery(\"house\", x)");], [Returns Householder vector #raw("v"); and scalar #raw("beta"); so #raw("H=I-beta*v*v'\n            ");reflects#raw("x");onto a multiple of#raw("e1");.], 
  [binomial], [#raw("A = gallery(\"binomial\", n)");], [Binomial matrix with#raw("A^2 = 2^(n-1) I");; scaled matrix is involutory.], 
  [cauchy], [#raw("A = gallery(\"cauchy\", x, y)");], [Cauchy matrix#raw("A(i,j)=1/(x(i)+y(j))");; explicit determinant and inverse formulas exist.], 
  [ris], [#raw("A = gallery(\"ris\", n)");], [Symmetric Hankel matrix with entries 0.5\/(n-i-j+1.5); eigenvalues cluster near ±π\/2.], 
  [chebspec], [#raw("A = gallery(\"chebspec\", n, k)");], [Chebyshev spectral differentiation matrix.#raw("k");\=0 yields a nilpotent form;#raw("k");\=1 yields a nonsingular, well-conditioned operator.], 
  [wilk], [#raw("gallery(\"wilk\", m)");], [Wilkinson examples (small triangular systems, W21+, etc.) illustrating stability issues.], 
  [sampling], [#raw("A = gallery(\"sampling\", x)");], [Nonsymmetric matrix with integer eigenvalues 0..n-1; eigenvectors are typically ill-conditioned.], 
  [ipjfact], [#raw("[A,beta] = gallery(\"ipjfact\", n, k)");], [Hankel matrix built from factorials (or reciprocals); determinant and inverse known in closed form.], 
  [moler], [#raw("A = gallery(\"moler\", n, alpha)");], [Symmetric positive definite example produced as#raw("U'*U");; can exhibit an isolated tiny eigenvalue.], 
  [lotkin], [#raw("A = gallery(\"lotkin\", n)");], [Hilbert-like matrix with first row ones; extremely ill-conditioned, inverse has integer structure.], 
  [chebvand], [#raw("A = gallery(\"chebvand\", x)");], [Chebyshev Vandermonde-like matrix: #raw("A(i,j)=T_{i-1}(x(j))");, useful for spectral interpolation and polynomial bases.], 
  [lehmer], [#raw("A = gallery(\"lehmer\", n)");], [lehmer matrix with entries i\/j for i ≤ j; symmetric positive definite and ill-conditioned.], 
)

== Bibliography

See references in Higham, N. J., Accuracy and Stability of Numerical Algorithms for Gallery of Test Matrices.

== Examples

Simple ill-conditioned 3-by-3 test matrix

``````matlab
A = gallery(3)
``````

Create and display a circulant matrix

``````matlab
C = gallery("circul",120);
imagesc(C);
axis square;
colorbar;
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];, #nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];, #nlink(<elementary_functions:6_matrix_generation.magic>)[magic];, #nlink(<elementary_functions:6_matrix_generation.pascal>)[pascal];, #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
