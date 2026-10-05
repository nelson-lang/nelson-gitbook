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
- beta - determinant or scalar output for families that return it explicitly (for example <b>ipjfact</b> returns determinant<code>beta</code>)

## 📄 Description


The <b>gallery</b> function returns a collection of standard test matrices and generated data used to illustrate numerical linear algebra concepts, test algorithms, and reproduce textbook examples. 

Use the <b>matrixname</b> argument to select a family; additional parameters (sizes, vectors, options) depend on the chosen family. 

Typical uses: study eigenvalue sensitivity and conditioning, exercise solvers with structured matrices (Toeplitz, Hankel, circulant), generate random or specially structured matrices with prescribed singular/eigenvalue properties, or obtain canonical examples for teaching and tests. 

The optional <b>typename</b> forces the numeric output type. 

If omitted, the output type is inferred from the inputs: presence of a<code>single</code>input yields<code>single</code>, otherwise outputs are<code>double</code>. 

| Name | Syntax | Notes | 
| --- | --- | --- | 
| gallery(3) | <code>A = gallery(3)</code> | Classic ill-conditioned 3×3 test matrix; demonstrates eigenvalue sensitivity. | 
| gallery(5) | <code>A = gallery(5)</code> | 5×5 example with exact characteristic polynomial \\(\\lambda^5=0\\); numerically the eigenvalues are small and sensitive. | 
| circul | <code>A = gallery("circul", v)</code> | Circulant matrix: rows are cyclic shifts of<code>v</code>; eigenvalues are the DFT of<code>v</code>. | 
| grcar | <code>A = gallery("grcar", n, k)</code> | Toeplitz with -1 on subdiagonal and 1's on main and k superdiagonals; useful for pseudospectra examples. | 
| minij | <code>A = gallery("minij", n)</code> | SPD matrix with <code>A(i,j)=min(i,j)</code>; inverse is tridiagonal (second-difference structure). | 
| dramadah | <code>A = gallery("dramadah", n, k)</code> | Binary (0/1) families; certain k yield unimodular Toeplitz matrices with integer inverses. | 
| house | <code>[v,beta] = gallery("house", x)</code> | Returns Householder vector <code>v</code> and scalar <code>beta</code> so <code>H=I-beta*v*v'
            </code>reflects<code>x</code>onto a multiple of<code>e1</code>. | 
| binomial | <code>A = gallery("binomial", n)</code> | Binomial matrix with<code>A^2 = 2^(n-1) I</code>; scaled matrix is involutory. | 
| cauchy | <code>A = gallery("cauchy", x, y)</code> | Cauchy matrix<code>A(i,j)=1/(x(i)+y(j))</code>; explicit determinant and inverse formulas exist. | 
| ris | <code>A = gallery("ris", n)</code> | Symmetric Hankel matrix with entries 0.5/(n-i-j+1.5); eigenvalues cluster near ±π/2. | 
| chebspec | <code>A = gallery("chebspec", n, k)</code> | Chebyshev spectral differentiation matrix.<code>k</code>=0 yields a nilpotent form;<code>k</code>=1 yields a nonsingular, well-conditioned operator. | 
| wilk | <code>gallery("wilk", m)</code> | Wilkinson examples (small triangular systems, W21+, etc.) illustrating stability issues. | 
| sampling | <code>A = gallery("sampling", x)</code> | Nonsymmetric matrix with integer eigenvalues 0..n-1; eigenvectors are typically ill-conditioned. | 
| ipjfact | <code>[A,beta] = gallery("ipjfact", n, k)</code> | Hankel matrix built from factorials (or reciprocals); determinant and inverse known in closed form. | 
| moler | <code>A = gallery("moler", n, alpha)</code> | Symmetric positive definite example produced as<code>U'*U</code>; can exhibit an isolated tiny eigenvalue. | 
| lotkin | <code>A = gallery("lotkin", n)</code> | Hilbert-like matrix with first row ones; extremely ill-conditioned, inverse has integer structure. | 
| chebvand | <code>A = gallery("chebvand", x)</code> | Chebyshev Vandermonde-like matrix: <code>A(i,j)=T_{i-1}(x(j))</code>, useful for spectral interpolation and polynomial bases. | 
| lehmer | <code>A = gallery("lehmer", n)</code> | lehmer matrix with entries i/j for i ≤ j; symmetric positive definite and ill-conditioned. | 



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

[hankel](../../elementary_functions/6_matrix_generation/hankel.md), [hilb](../../elementary_functions/6_matrix_generation/hilb.md), [magic](../../elementary_functions/6_matrix_generation/magic.md), [pascal](../../elementary_functions/6_matrix_generation/pascal.md), [toeplitz](../../elementary_functions/6_matrix_generation/toeplitz.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
