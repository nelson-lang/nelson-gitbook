# asserts.endsWith

Check that text ends with a suffix.

## 📝 Syntax

- asserts.endsWith(text, suffix)
- [res, msg] = asserts.endsWith(text, suffix)

## 📥 Input argument

- text - Character vector or string scalar to test.
- suffix - Expected suffix.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when text ends with suffix. 

With outputs, a missing suffix is returned as an assertion failure.

## 💡 Examples

Expected suffix

```matlab
asserts.endsWith('Nelson language', 'language');
```
Capture a suffix failure

```matlab
[res, msg] = asserts.endsWith('Nelson language', 'Nelson');
```


## 🔗 See also

[asserts.startsWith](../assert_functions/asserts.startsWith.md), [asserts.contains](../assert_functions/asserts.contains.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
