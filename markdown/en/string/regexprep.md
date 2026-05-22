# regexprep

Replace text using regular expression.

## 📝 Syntax

- newStr = regexprep(str, expression, replace)
- newStr = regexprep(..., option)

## 📥 Input argument

- str - a character vector, string array, or cell array of character vectors.
- expression - a regular expression.
- replace - replacement text. Token references such as $1 and $& are supported.
- option - 'once', an occurrence number, 'ignorecase', 'preservecase', and other regular expression options.

## 📤 Output argument

- newStr - text after replacement.

## 📄 Description

<b>regexprep</b> replaces text matched by a regular expression. Replacement text can reference ordinal and named tokens.

## 💡 Example

```matlab

regexprep('a1 b2', '(\w)(\d)', '$2-$1')
regexprep('My flowers may bloom in May', 'M(\w+)y', 'April', 'preservecase')

```

## 🔗 See also

[regexp](../string/regexp.md), [regexptranslate](../string/regexptranslate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
