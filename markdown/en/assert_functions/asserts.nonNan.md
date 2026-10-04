# asserts.nonNan

Check that no numeric entry is NaN.

## 📝 Syntax

- asserts.nonNan(value)
- [res, msg] = asserts.nonNan(value)

## 📥 Input argument

- value - Numeric or logical scalar or array.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when no entry is NaN.

Infinite values are allowed by this assertion.

## 💡 Examples

No NaN values

```matlab
asserts.nonNan([1 Inf]);
```

Capture a NaN value

```matlab
[res, msg] = asserts.nonNan([1 NaN]);
```

## 🔗 See also

[asserts.finite](../assert_functions/asserts.finite.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
