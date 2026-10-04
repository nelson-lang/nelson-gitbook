# asserts.columnVector

Check that a value is a column vector.

## 📝 Syntax

- asserts.columnVector(value)
- [res, msg] = asserts.columnVector(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value has column-vector shape.

Diagnostics report the computed class and dimensions.

## 💡 Examples

Column vector

```matlab
asserts.columnVector([1; 2]);
```

Capture a shape failure

```matlab
[res, msg] = asserts.columnVector([1 2]);
```

## 🔗 See also

[asserts.rowVector](../assert_functions/asserts.rowVector.md), [asserts.vector](../assert_functions/asserts.vector.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
