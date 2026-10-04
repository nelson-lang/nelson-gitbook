# asserts.lessOrEqual

Check that every value is less than or equal to a limit.

## 📝 Syntax

- asserts.lessOrEqual(value, limit)
- [res, msg] = asserts.lessOrEqual(value, limit)

## 📥 Input argument

- value - Real numeric or logical scalar or array.
- limit - Real numeric or logical scalar or array. Scalar expansion is supported.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when value <= limit for every compared element.

Arrays must have the same dimensions unless one input is scalar.

## 💡 Examples

Element-wise comparison

```matlab
asserts.lessOrEqual([1 2], [1 2]);
```

Capture a relation failure

```matlab
[res, msg] = asserts.lessOrEqual([1 4], 3);
```

## 🔗 See also

[asserts.lessThan](../assert_functions/asserts.lessThan.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
