# asserts.vector

Check that a value is a vector.

## 📝 Syntax

- asserts.vector(value)
- [res, msg] = asserts.vector(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when value is a row vector or a column vector. 

Diagnostics include the computed dimensions.

## 💡 Examples

Vector value

```matlab
asserts.vector([1 2]);
```
Capture a matrix value

```matlab
[res, msg] = asserts.vector(ones(2, 2));
```


## 🔗 See also

[asserts.rowVector](../assert_functions/asserts.rowVector.md), [asserts.columnVector](../assert_functions/asserts.columnVector.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
