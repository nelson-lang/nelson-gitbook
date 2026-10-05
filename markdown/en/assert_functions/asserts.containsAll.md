# asserts.containsAll

Check that text contains all expected patterns.

## 📝 Syntax

- asserts.containsAll(text, patterns)
- [res, msg] = asserts.containsAll(text, patterns)

## 📥 Input argument

- text - Character vector or string scalar to test.
- patterns - Character vector, string scalar, string array or cell of character vectors. Every pattern must be present.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every pattern is found in text. 

Use asserts.containsAny when one matching pattern is enough.

## 💡 Examples

All patterns present

```matlab
asserts.containsAll('Nelson language', {'Nelson', 'language'});
```
Capture a missing pattern

```matlab
[res, msg] = asserts.containsAll('Nelson language', {'Nelson', 'toolbox'});
```


## 🔗 See also

[asserts.containsAny](../assert_functions/asserts.containsAny.md), [asserts.contains](../assert_functions/asserts.contains.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
