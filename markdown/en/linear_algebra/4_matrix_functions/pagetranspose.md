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

[pagectranspose](../../linear_algebra/pagectranspose.md), [pagemtimes](../../linear_algebra/pagemtimes.md), [permute](../../elementary_functions/permute.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
