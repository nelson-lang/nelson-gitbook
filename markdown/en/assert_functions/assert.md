# assert

Check that a condition is true.

## 📝 Syntax

- assert(condition)
- assert(condition, message)
- assert(condition, message, value)
- assert(condition, identifier, message)
- assert(condition, identifier, message, value)
- [res, msg] = assert(...)

## 📥 Input argument

- condition - Logical or real numeric scalar or array to test. Every entry must be nonzero.
- message - Optional custom failure message. Format replacements are supported with following values.
- identifier - Optional error identifier used when the assertion raises an error.
- value - Optional value inserted in the message format.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - Assertion failure message, empty on success.

## 📄 Description

<b>assert</b> raises an error when condition is false and no output is requested.

With outputs, assertion failures are returned as <b>res</b> and <b>msg</b> instead of being raised.

Use the <b>asserts</b> package for qualified assertion helpers, for example <b>asserts.isequal(...)</b>.

## 💡 Examples

Passing condition

```matlab
assert(5 > 3);
```

Custom message

```matlab
[res, msg] = assert(false, 'condition failed');
```

Formatted message

```matlab
[res, msg] = assert(false, 'value %.2f', 1.234);
```

Error identifier

```matlab
[res, msg] = assert(false, 'Nelson:asserts:example', 'condition failed');
```

## 🔗 See also

[asserts.istrue](../assert_functions/asserts.istrue.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md), [asserts.isequal](../assert_functions/asserts.isequal.md), [asserts.isapprox](../assert_functions/asserts.isapprox.md).

## 🕔 History

| Version | 📄 Description                                              |
| ------- | ----------------------------------------------------------- |
| 1.0.0   | initial version                                             |
| 2.0.0   | added formatted messages, error identifiers and output mode |

<!--
## 👤 Author

Allan CORNET
-->
