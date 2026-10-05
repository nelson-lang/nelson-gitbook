#import "nelson_help.typ": *

= mldivide <operators:mldivide>

Matrix left division, \\ operator.

== Syntax

- #raw("C = mldivide(A, B)");
- #raw("C = A \\ B");

== Input argument

/ A: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.
/ B: a variable, a table or a timetable. When the other operand is a table or timetable, it must be a scalar.

== Output argument

/ C: result of A \\ B

== Description

#strong[C \= mldivide(A, B)]; returns the matrix left division of A and B.

 For sparse floating-point matrices, Nelson uses Eigen-based sparse solvers. Symmetric positive definite systems use sparse Cholesky paths, Hermitian or symmetric indefinite systems can use sparse LDLT, general square systems use sparse LU, and rectangular systems use sparse QR or iterative least-squares fallback paths.

 Sparse double, single, complex double, and complex single matrices are supported. Mixed real and complex inputs promote to the matching complex class. Sparse right-hand sides preserve sparse storage when the result can be represented sparsely.

 Rectangular sparse systems return a least-squares solution for overdetermined systems and a compatible sparse solution for underdetermined systems when the system is exactly satisfiable.

 Singular diagonal and structurally zero sparse systems report clear warnings or errors and return Inf or NaN entries where the scalar divisions require them.

 When one operand is a table or timetable and the other operand is a scalar, #strong[A \\ B]; is an element-wise operation applied to every variable, identical to #strong[A .\\ B];: variable names, units and row times are kept. Any other combination with a table or timetable (two tables, or a table and a non-scalar array) is an error: use #strong[.\\]; instead.


== Examples

``````matlab
B = ones(3, 4)
A = B *2
A \ B
``````

``````matlab
A = sparse(single([4 -1 0; -1 4 -1; 0 -1 3]));
b = single([15; 10; 10]);
x = A \ b
full(A * x)
``````

Rectangular sparse least-squares solve.

``````matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
x = A \ b
norm(A * x - b)
``````

Sparse complex single solve with a sparse right-hand side.

``````matlab
A = sparse(single([3 + 1i 1; 0 2 - 1i]));
B = sparse(single([4 + 2i 0; 3 - 1i 1]));
X = A \ B
full(A * X)
``````

Hermitian indefinite sparse single complex solve.

``````matlab
A = sparse(single([0 1 + 2i; 1 - 2i 3]));
B = sparse(single([1 + 1i 0; 2 - 1i 1]));
X = A \ B
full(A * X)
``````

Underdetermined sparse system with an exact sparse solution.

``````matlab
A = sparse([1 2 0; 0 4 3]);
b = sparse([8; 18]);
x = A \ b
full(A * x)
``````

Element-wise operation between a table and a scalar.

``````matlab
T = table([1; 2], [4; 8]);
2 \ T
``````


== See also

#nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mrdivide>)[mrdivide];, #nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [added Eigen-based sparse single, complex single, square, rectangular, sparse right-hand side, and underdetermined fallback documentation],
  [2.0.0], [table and timetable operands combined with a scalar (element-wise operation).],
)

// Author: Allan CORNET
