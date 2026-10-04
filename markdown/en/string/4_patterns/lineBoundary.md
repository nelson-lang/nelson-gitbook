# lineBoundary

Start or end of line pattern.

## 📝 Syntax

- R = lineBoundary(...)

## 📄 Description

<b>lineBoundary</b> Start or end of line pattern.

## 💡 Example

```matlab
pat = lineBoundary("start") + lettersPattern(5); extract(sprintf('first\nsecond'), pat)
```

## 🔗 See also

[textBoundary](../../string/textBoundary.md), [whitespaceBoundary](../../string/whitespaceBoundary.md), [pattern](../../string/pattern.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
