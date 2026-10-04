# assert_isapprox

Historical name for asserts.isapprox.

## 📝 Syntax

- assert_isapprox(computed, expected)
- assert_isapprox(computed, expected, precision)
- assert_isapprox(computed, expected, precision, absolute_tolerance)
- assert_isapprox(computed, expected, message)
- res = assert_isapprox(computed, expected)
- [res, msg] = assert_isapprox(computed, expected)

## 📥 Input argument

- computed - Computed numeric value.
- expected - Expected numeric value.
- precision - Optional relative tolerance.
- absolute_tolerance - Optional absolute tolerance.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if values are approximately equal, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description

<b>assert_isapprox</b> is kept for compatibility.

Absolute tolerance applies to sparse and full numeric arrays, including implicit sparse zeros, with the same rules as asserts.isapprox.

For complete documentation, use [asserts.isapprox](../assert_functions/asserts.isapprox.md).

## Used function(s)

isapprox

## 💡 Examples

Historical call

```matlab
assert_isapprox(1.23456, 1.23457, 1e-5);
```

Canonical call

```matlab
asserts.isapprox(1, 1 + 1e-8, 0, 1e-7);
```

## 🔗 See also

[asserts.isapprox](../assert_functions/asserts.isapprox.md), [isapprox](../elementary_functions/isapprox.md).

## 🕔 History

| Version | 📄 Description                                     |
| ------- | -------------------------------------------------- |
| 1.0.0   | initial version                                    |
| 2.0.0   | documented as historical name for asserts.isapprox |

<!--
## 👤 Author

Allan CORNET
-->
