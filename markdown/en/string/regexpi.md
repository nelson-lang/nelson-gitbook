# regexpi

Match regular expression, ignoring case.

## 📝 Syntax

- startIndex = regexpi(str, expression)
- out = regexpi(str, expression, outkey)
- out = regexpi(..., option)

## 📥 Input argument

- str - a character vector, string array, or cell array of character vectors.
- expression - a regular expression.
- outkey - same output keys as <b>regexp</b>.

## 📤 Output argument

- out - match indices, matches, tokens, named token structures, or split text.

## 📄 Description

<b>regexpi</b> is equivalent to <b>regexp</b> with case-insensitive matching enabled by default.

## 💡 Example

```matlab

regexpi('ABC abc', 'abc', 'match')

```

## 🔗 See also

[regexp](../string/regexp.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
