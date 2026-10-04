# optionalPattern

Make pattern optional.

## 📝 Syntax

- R = optionalPattern(...)

## 📄 Description

<b>optionalPattern</b> Make pattern optional.

## 💡 Example

```matlab
pat = optionalPattern("u"); extract(["color"; "colour"], "colo" + pat + "r")
```

## 🔗 See also

[asManyOfPattern](../../string/asManyOfPattern.md), [asFewOfPattern](../../string/asFewOfPattern.md), [pattern](../../string/pattern.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
