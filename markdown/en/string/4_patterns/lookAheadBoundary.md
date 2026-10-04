# lookAheadBoundary

Boundary before a pattern.

## 📝 Syntax

- R = lookAheadBoundary(...)

## 📄 Description

<b>lookAheadBoundary</b> Boundary before a pattern.

## 💡 Example

```matlab
pat = lookAheadBoundary(digitsPattern(3)); extract("abc123", lettersPattern(3) + pat)
```

## 🔗 See also

[lookBehindBoundary](../../string/lookBehindBoundary.md), [textBoundary](../../string/textBoundary.md), [pattern](../../string/pattern.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
