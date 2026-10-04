# asserts.greaterThan

Check that every value is strictly greater than a limit.

## 📝 Syntax

- asserts.greaterThan(value, limit)
- [res, msg] = asserts.greaterThan(value, limit)

## 📥 Input argument

- value - Real numeric or logical scalar or array.
- limit - Real numeric or logical scalar or array. Scalar expansion is supported.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value > limit for every compared element.

Arrays must have the same dimensions unless one input is scalar.

## 💡 Examples

Scalar expansion

```matlab
asserts.greaterThan([2 3], 1);
```

Capture a relation failure

```matlab
[res, msg] = asserts.greaterThan([0 3], 1);
```

## 🔗 See also

[asserts.greaterOrEqual](../assert_functions/asserts.greaterOrEqual.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
