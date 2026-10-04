# asserts.greaterOrEqual

Check that every value is greater than or equal to a limit.

## 📝 Syntax

- asserts.greaterOrEqual(value, limit)
- [res, msg] = asserts.greaterOrEqual(value, limit)

## 📥 Input argument

- value - Real numeric or logical scalar or array.
- limit - Real numeric or logical scalar or array. Scalar expansion is supported.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value >= limit for every compared element.

Arrays must have the same dimensions unless one input is scalar.

## 💡 Examples

Element-wise comparison

```matlab
asserts.greaterOrEqual([2 3], [2 3]);
```

Capture a relation failure

```matlab
[res, msg] = asserts.greaterOrEqual([0 3], 1);
```

## 🔗 See also

[asserts.greaterThan](../assert_functions/asserts.greaterThan.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
