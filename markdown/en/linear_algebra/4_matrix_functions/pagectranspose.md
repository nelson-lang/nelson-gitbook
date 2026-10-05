# pagectranspose

Page-wise complex conjugate transpose.

## 📝 Syntax

- Y = pagectranspose(X)

## 📥 Input argument

- X - N-D array.

## 📤 Output argument

- Y - array where each page is replaced by its complex conjugate transpose.

## 📄 Description


<b>pagectranspose</b> applies the complex conjugate transpose to the first two dimensions of each page of the N-D array X: Y(:,:,i) = X(:,:,i)'.

## 💡 Example



```matlab
X = reshape((1:8) + 1i, 2, 2, 2);
Y = pagectranspose(X)
```


## 🔗 See also

[pagetranspose](../../linear_algebra/4_matrix_functions/pagetranspose.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md), [ctranspose](../../operators/ctranspose.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
