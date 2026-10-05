# isequalwithequalnans

Compare arrays while treating NaN values as equal.

## 📝 Syntax

- tf = isequalwithequalnans(A, B)
- tf = isequalwithequalnans(A1, A2, ...)

## 📥 Input argument

- A - Input array.

## 📤 Output argument

- tf - Logical scalar.

## 📄 Description


<b>isequalwithequalnans</b> is equivalent to <b>isequaln</b>.

## 💡 Example



```matlab
tf = isequalwithequalnans([NaN 1], [NaN 1])
```


## 🔗 See also

[isequaln](../../elementary_functions/7_indexing_dimensions/isequaln.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
