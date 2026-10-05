# pagenorm

Page-wise matrix or vector norm.

## 📝 Syntax

- Y = pagenorm(X)
- Y = pagenorm(X, p)

## 📥 Input argument

- X - N-D array. Each page is X(:,:,i,...).
- p - norm order: 2 (default, largest singular value), 1, Inf or 'fro'.

## 📤 Output argument

- Y - array of the page norms, of size [1 1 size(X,3) ...].

## 📄 Description


<b>pagenorm(X)</b> computes the 2-norm of each page X(:,:,i,...) of the N-D array X and returns them in an array whose first two dimensions are singleton. 

<b>pagenorm(X, p)</b> uses the norm of order p: 1, 2, Inf or 'fro'. When a page is a vector, the corresponding vector norm is used.

## 💡 Example



```matlab
X = cat(3, [1 2; 3 4], [5 6; 7 8]);
Y = pagenorm(X)
```


## 🔗 See also

[norm](../../elementary_functions/2_elementary_math/norm.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md), [pagetranspose](../../linear_algebra/4_matrix_functions/pagetranspose.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
