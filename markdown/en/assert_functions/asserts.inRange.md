# asserts.inRange

Check that every value is inside an inclusive range.

## 📝 Syntax

- asserts.inRange(value, minValue, maxValue)
- [res, msg] = asserts.inRange(value, minValue, maxValue)

## 📥 Input argument

- value - Real numeric or logical scalar or array.
- minValue - Inclusive lower bound. Scalar expansion is supported.
- maxValue - Inclusive upper bound. Scalar expansion is supported.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when minValue <= value <= maxValue for every compared element.

Bounds can be scalars or arrays with dimensions compatible with value.

## 💡 Examples

Inclusive range

```matlab
asserts.inRange([1 2], 0, 3);
```

Capture an out-of-range value

```matlab
[res, msg] = asserts.inRange([1 4], 0, 3);
```

## 🔗 See also

[asserts.greaterOrEqual](../assert_functions/asserts.greaterOrEqual.md), [asserts.lessOrEqual](../assert_functions/asserts.lessOrEqual.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
