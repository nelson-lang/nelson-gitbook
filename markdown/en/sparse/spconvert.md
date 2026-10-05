# spconvert

Convert indexed data to a sparse matrix.

## 📝 Syntax

- S = spconvert(D)

## 📥 Input argument

- D - a full m-by-3 or m-by-4 double matrix.

## 📤 Output argument

- S - a sparse double or complex double matrix.

## 📄 Description


<b>spconvert</b> builds a sparse matrix from rows <b>[i j v]</b>. With four columns, rows are interpreted as <b>[i j real imag]</b>.

## 💡 Example



```matlab
D = [1 1 10; 2 3 20; 3 2 30];
S = spconvert(D)
```


## 🔗 See also

[sparse](../sparse/sparse.md), [IJV](../sparse/IJV.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
