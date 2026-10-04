# asserts.match

Check that text matches a regular expression.

## 📝 Syntax

- asserts.match(text, pattern)
- [res, msg] = asserts.match(text, pattern)

## 📥 Input argument

- text - Character vector or string scalar to test.
- pattern - Regular expression pattern.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when pattern matches text.

Invalid regular expressions raise an argument error immediately.

## 💡 Examples

Regular expression match

```matlab
asserts.match('abc123', '^abc[0-9]+$');
```

Capture a missing match

```matlab
[res, msg] = asserts.match('abc', '[0-9]+');
```

## 🔗 See also

[asserts.matchesAll](../assert_functions/asserts.matchesAll.md), [asserts.matchesAny](../assert_functions/asserts.matchesAny.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
