# textBoundary

Start or end of text pattern.

## 📝 Syntax

- R = textBoundary(...)

## 📄 Description

<b>textBoundary</b> Start or end of text pattern.

## 💡 Example

```matlab
pat = textBoundary("start") + lettersPattern(3) + textBoundary("end"); extract("abc", pat)
```

## 🔗 See also

[lineBoundary](../../string/lineBoundary.md), [whitespaceBoundary](../../string/whitespaceBoundary.md), [pattern](../../string/pattern.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
