# asserts.lessThan

Check that every value is strictly less than a limit.

## 📝 Syntax

- asserts.lessThan(value, limit)
- [res, msg] = asserts.lessThan(value, limit)

## 📥 Input argument

- value - Real numeric or logical scalar or array.
- limit - Real numeric or logical scalar or array. Scalar expansion is supported.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when value < limit for every compared element. 

Arrays must have the same dimensions unless one input is scalar.

## 💡 Examples

Scalar expansion

```matlab
asserts.lessThan([1 2], 3);
```
Capture a relation failure

```matlab
[res, msg] = asserts.lessThan([1 4], 3);
```


## 🔗 See also

[asserts.lessOrEqual](../assert_functions/asserts.lessOrEqual.md), [asserts.inRange](../assert_functions/asserts.inRange.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
