# resize

Resize an array by truncating or padding.

## 📝 Syntax

- B = resize(A, m)
- B = resize(A, sz)
- B = resize(A, sz, 'FillValue', v)

## 📥 Input argument

- A - the array to resize.
- m - a scalar length, used to resize a vector.
- sz - a size vector <b>[m n ...]</b> giving the size of the result.
- v - the value used to fill added elements (default <b>0</b> for a numeric array).

## 📤 Output argument

- B - the resized array, of the requested size and the class of <b>A</b>.

## 📄 Description


<b>resize</b> returns an array of the requested size. Along each dimension, elements of <b>A</b> beyond the new size are dropped and positions beyond the original data are filled with a fill value, which is <b>0</b> for a numeric array unless <b>'FillValue'</b> is given. A scalar size resizes the length of a vector and keeps its orientation.

## 💡 Example



```matlab
resize([1 2 3], 6)
```


## 🔗 See also

[reshape](../../elementary_functions/1_array_creation_shape/reshape.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
