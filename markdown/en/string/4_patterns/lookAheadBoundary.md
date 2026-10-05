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

[lookBehindBoundary](../../string/4_patterns/lookBehindBoundary.md), [textBoundary](../../string/4_patterns/textBoundary.md), [pattern](../../string/4_patterns/pattern.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
