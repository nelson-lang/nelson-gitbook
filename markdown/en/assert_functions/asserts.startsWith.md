# asserts.startsWith

Check that text starts with a prefix.

## 📝 Syntax

- asserts.startsWith(text, prefix)
- [res, msg] = asserts.startsWith(text, prefix)

## 📥 Input argument

- text - Character vector or string scalar to test.
- prefix - Expected prefix.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when text begins with prefix. 

With outputs, a missing prefix is returned as an assertion failure.

## 💡 Examples

Expected prefix

```matlab
asserts.startsWith('Nelson language', 'Nelson');
```
Capture a prefix failure

```matlab
[res, msg] = asserts.startsWith('Nelson language', 'language');
```


## 🔗 See also

[asserts.endsWith](../assert_functions/asserts.endsWith.md), [asserts.contains](../assert_functions/asserts.contains.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
