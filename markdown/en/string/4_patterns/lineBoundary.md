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

[textBoundary](../../string/4_patterns/textBoundary.md), [whitespaceBoundary](../../string/4_patterns/whitespaceBoundary.md), [pattern](../../string/4_patterns/pattern.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
