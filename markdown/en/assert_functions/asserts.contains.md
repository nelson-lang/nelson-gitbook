# asserts.contains

Check that text contains a pattern.

## 📝 Syntax

- asserts.contains(text, pattern)
- [res, msg] = asserts.contains(text, pattern)

## 📥 Input argument

- text - Character vector or string scalar to test.
- pattern - Expected text pattern.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description

The assertion passes when pattern is found in text.

Use asserts.containsAll or asserts.containsAny for a list of patterns.

## 💡 Examples

Pattern present

```matlab
asserts.contains('Nelson language', 'language');
```

Capture a missing pattern

```matlab
[res, msg] = asserts.contains('Nelson language', 'toolbox');
```

## 🔗 See also

[asserts.containsAll](../assert_functions/asserts.containsAll.md), [asserts.containsAny](../assert_functions/asserts.containsAny.md), [asserts.match](../assert_functions/asserts.match.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
