# gallery

Generate commonly used test matrices and data for numerical experiments

## 📝 Syntax

- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn)
- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn,typename)
- A = gallery(k)
- A = gallery("circul", v)
- [v,beta] = gallery("house", x)
- [A,beta] = gallery("ipjfact", n, k)
- A = gallery("cauchy", x, y)

## 📥 Input argument

- matrixname - name of the matrix family to generate (string or character vector), e.g. "circul", "cauchy", "grcar", "minij", "dramadah", "house", "ipjfact"
- P1, P2, ..., Pn - family-dependent parameters: scalars, vectors or matrices that determine size and entries (for example<code>n</code>, vectors<code>v</code>,<code>x</code>,<code>y</code>, or option flags)
- n - positive integer specifying matrix order or size
- v, x, y - vectors used as parameters (for example first row for circulant, point locations for chebvand, or Cauchy parameters)
- k - option or small integer parameter controlling family behaviour (for example number of superdiagonals for<b>grcar</b> or variant selectors for <b>dramadah</b>)
- typename - optional output data type: "double" (default) or "single"

## 📤 Output argument

- A1,A2,...,Am - one or more matrices or arrays produced by the chosen family
- A - single matrix or multidimensional array when one output is requested
- v,beta,s - Householder outputs:<code>v</code>(vector),<code>beta</code>(scalar), and optional<code>s</code>returned by <b>house</b>
- beta - determinant or scalar output for families that return it explicitly (for example<b>ipjfact</b> returns determinant<code>beta</code>)

## 📄 Description

The<b>gallery</b> function returns a collection of standard test matrices and generated data used to illustrate numerical linear algebra concepts, test algorithms, and reproduce textbook examples.

Use the<b>matrixname</b> argument to select a family; additional parameters (sizes, vectors, options) depend on the chosen family.

Typical uses: study eigenvalue sensitivity and conditioning, exercise solvers with structured matrices (Toeplitz, Hankel, circulant), generate random or specially structured matrices with prescribed singular/eigenvalue properties, or obtain canonical examples for teaching and tests.

The optional <b>typename</b> forces the numeric output type.

If omitted, the output type is inferred from the inputs: presence of a<code>single</code>input yields<code>single</code>, otherwise outputs are<code>double</code>.

## 📚 Bibliography

See references in Higham, N. J., Accuracy and Stability of Numerical Algorithms for Gallery of Test Matrices.

## 💡 Examples

Simple ill-conditioned 3-by-3 test matrix

```matlab
A = gallery(3)
```

Create and display a circulant matrix

```matlab
C = gallery("circul",120);
imagesc(C);
axis square;
colorbar;
```

## 🔗 See also

[hankel](../elementary_functions/hankel.md), [hilb](../elementary_functions/hilb.md), [magic](../elementary_functions/magic.md), [pascal](../elementary_functions/pascal.md), [toeplitz](../elementary_functions/toeplitz.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
