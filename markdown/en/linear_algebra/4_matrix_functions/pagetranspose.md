# pagetranspose

Page-wise transpose.

## 📝 Syntax

- Y = pagetranspose(X)

## 📥 Input argument

- X - N-D array.

## 📤 Output argument

- Y - array where the first two dimensions of each page are transposed.

## 📄 Description


<b>pagetranspose</b> transposes the first two dimensions of each page of the N-D array X: Y(:,:,i) = X(:,:,i).'. Complex values are not conjugated.

## 💡 Example



```matlab
X = reshape(1:24, 2, 3, 4);
Y = pagetranspose(X)
```


## 🔗 See also

[pagectranspose](../../linear_algebra/4_matrix_functions/pagectranspose.md), [pagemtimes](../../linear_algebra/4_matrix_functions/pagemtimes.md), [permute](../../elementary_functions/7_indexing_dimensions/permute.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
