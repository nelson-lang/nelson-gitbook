# asserts.squareMatrix

Check that a value is a square matrix.

## 📝 Syntax

- asserts.squareMatrix(value)
- [res, msg] = asserts.squareMatrix(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value has two equal matrix dimensions.

Diagnostics report the computed class and dimensions.

## 💡 Examples

Square matrix

```matlab
asserts.squareMatrix(ones(2, 2));
```

Capture a shape failure

```matlab
[res, msg] = asserts.squareMatrix(ones(2, 3));
```

## 🔗 See also

[asserts.matrix](../assert_functions/asserts.matrix.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
