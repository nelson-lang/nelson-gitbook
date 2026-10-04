# assert_isequal

Historical name for asserts.isequal.

## 📝 Syntax

- assert_isequal(computed, expected)
- assert_isequal(computed, expected, message)
- res = assert_isequal(computed, expected)
- [res, msg] = assert_isequal(computed, expected)

## 📥 Input argument

- computed - Computed value.
- expected - Expected value.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if values are equal, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description

<b>assert_isequal</b> is kept for compatibility.

For complete documentation, use [asserts.isequal](../assert_functions/asserts.isequal.md).

## Used function(s)

isequaln

## 💡 Examples

Historical call

```matlab
assert_isequal([1 2], [1 2]);
```

Canonical call

```matlab
asserts.isequal([1 2], [1 2]);
```

## 🔗 See also

[asserts.isequal](../assert_functions/asserts.isequal.md), [isequaln](../elementary_functions/isequaln.md).

## 🕔 History

| Version | 📄 Description                                    |
| ------- | ------------------------------------------------- |
| 1.0.0   | initial version                                   |
| 2.0.0   | documented as historical name for asserts.isequal |

<!--
## 👤 Author

Allan CORNET
-->
