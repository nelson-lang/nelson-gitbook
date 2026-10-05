# regexptranslate

Translate text into regular expression.

## 📝 Syntax

- newStr = regexptranslate(op, str)
- newStr = regexptranslate('flexible', str, expression)

## 📥 Input argument

- op - 'escape', 'wildcard', or 'flexible'.
- str - a character vector, string array, or cell array of character vectors.

## 📤 Output argument

- newStr - translated regular expression text.

## 📄 Description


<b>regexptranslate</b> escapes regular expression metacharacters or translates wildcard characters into regular expression syntax.

## 💡 Example



```matlab

regexptranslate('escape', 'a+b*c?.m')
regexptranslate('wildcard', '*.m')

```


## 🔗 See also

[regexp](../../string/5_regular_expressions/regexp.md), [regexprep](../../string/5_regular_expressions/regexprep.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.17.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
