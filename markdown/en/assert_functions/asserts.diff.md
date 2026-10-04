# asserts.diff

Return equality diagnostics without throwing.

## 📝 Syntax

- msg = asserts.diff(computed, expected)
- [res, msg] = asserts.diff(computed, expected)

## 📥 Input argument

- computed - Computed value.
- expected - Expected value.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

This is a diagnostic helper, not a failing assertion.

It returns the same style of message as asserts.isequal for comparison failures.

## 💡 Examples

Inspect a difference

```matlab
msg = asserts.diff([1 2], [1 3]);
```

Check equality status

```matlab
[res, msg] = asserts.diff([1 2], [1 2]);
```

## 🔗 See also

[asserts.isequal](../assert_functions/asserts.isequal.md), [asserts.isapprox](../assert_functions/asserts.isapprox.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
