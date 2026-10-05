# asserts.rowVector

Check that a value is a row vector.

## 📝 Syntax

- asserts.rowVector(value)
- [res, msg] = asserts.rowVector(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when value has row-vector shape. 

Diagnostics report the computed class and dimensions.

## 💡 Examples

Row vector

```matlab
asserts.rowVector([1 2]);
```
Capture a shape failure

```matlab
[res, msg] = asserts.rowVector([1; 2]);
```


## 🔗 See also

[asserts.columnVector](../assert_functions/asserts.columnVector.md), [asserts.vector](../assert_functions/asserts.vector.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
