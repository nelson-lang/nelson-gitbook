# asserts.matchesAll

Check that text matches all regular expressions.

## 📝 Syntax

- asserts.matchesAll(text, patterns)
- [res, msg] = asserts.matchesAll(text, patterns)

## 📥 Input argument

- text - Character vector or string scalar to test.
- patterns - Regular expression patterns. Every pattern must match.

## 📤 Output argument

- res - true if the assertion passes, false otherwise.
- msg - assertion failure message, empty on success.

## 📄 Description


The assertion passes when every regular expression matches text. 

Invalid regular expressions raise an argument error immediately.

## 💡 Examples

All expressions match

```matlab
asserts.matchesAll('abc123', {'^abc', '[0-9]+$'});
```
Capture a missing match

```matlab
[res, msg] = asserts.matchesAll('abc123', {'^abc', '^xyz'});
```


## 🔗 See also

[asserts.matchesAny](../assert_functions/asserts.matchesAny.md), [asserts.match](../assert_functions/asserts.match.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
