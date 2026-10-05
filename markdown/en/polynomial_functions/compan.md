# compan

Companion matrix.

## 📝 Syntax

- A = compan(c)

## 📥 Input argument

- c - a vector of polynomial coefficients, in descending powers.

## 📤 Output argument

- A - the companion matrix whose first row is <b>-c(2:end) / c(1)</b> and whose first subdiagonal is ones.

## 📄 Description


<b>compan</b> returns the companion matrix of the polynomial whose coefficients are <b>c</b>. 

The eigenvalues of the companion matrix are the roots of the polynomial, so <b>eig(compan(c))</b> and <b>roots(c)</b> return the same values. 

For a vector of length n, the result is an (n-1)-by-(n-1) matrix. A single coefficient returns an empty matrix.

## 💡 Example



```matlab
A = compan([1 -6 11 -6])
r = eig(A)

```


## 🔗 See also

[roots](../polynomial_functions/roots.md), [poly](../polynomial_functions/poly.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
