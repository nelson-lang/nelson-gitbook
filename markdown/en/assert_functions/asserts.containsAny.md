# asserts.containsAny

Check that text contains at least one expected pattern.

## 📝 Syntax

- asserts.containsAny(text, patterns)
- [res, msg] = asserts.containsAny(text, patterns)

## 📥 Input argument

- text - Character vector or string scalar to test.
- patterns - Character vector, string scalar, string array or cell of character vectors. At least one pattern must be present.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when at least one pattern is found in text. 

Use asserts.containsAll when every pattern must match.

## 💡 Examples

One pattern present

```matlab
asserts.containsAny('Nelson language', {'toolbox', 'Nelson'});
```
Capture missing patterns

```matlab
[res, msg] = asserts.containsAny('Nelson language', {'toolbox', 'module'});
```


## 🔗 See also

[asserts.containsAll](../assert_functions/asserts.containsAll.md), [asserts.contains](../assert_functions/asserts.contains.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
