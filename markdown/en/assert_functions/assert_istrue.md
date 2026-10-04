# assert_istrue

Historical name for asserts.istrue.

## 📝 Syntax

- assert_istrue(condition)
- assert_istrue(condition, message)
- [res, msg] = assert_istrue(condition)
- [res, msg] = assert_istrue(condition, message)

## 📥 Input argument

- condition - Logical scalar or array to test. Every entry must be true.
- message - Optional custom failure message.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description

<b>assert_istrue</b> is kept for compatibility.

For complete documentation, use [asserts.istrue](../assert_functions/asserts.istrue.md).

## 💡 Examples

Historical call

```matlab
assert_istrue(3 == 3);
```

Canonical call

```matlab
asserts.istrue(true);
```

## 🔗 See also

[asserts.istrue](../assert_functions/asserts.istrue.md), [assert](../assert_functions/assert.md).

## 🕔 History

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 2.0.0   | documented as historical name for asserts.istrue |

<!--
## 👤 Author

Allan CORNET
-->
