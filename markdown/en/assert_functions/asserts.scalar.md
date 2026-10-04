# asserts.scalar

Check that a value is scalar.

## 📝 Syntax

- asserts.scalar(value)
- [res, msg] = asserts.scalar(value)

## 📥 Input argument

- value - Value to test.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value is scalar.

Diagnostics include the computed dimensions.

## 💡 Examples

Scalar value

```matlab
asserts.scalar(1);
```

Capture a non-scalar value

```matlab
[res, msg] = asserts.scalar([1 2]);
```

## 🔗 See also

[asserts.vector](../assert_functions/asserts.vector.md), [asserts.matrix](../assert_functions/asserts.matrix.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
