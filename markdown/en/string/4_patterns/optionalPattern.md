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

[asManyOfPattern](../../string/4_patterns/asManyOfPattern.md), [asFewOfPattern](../../string/4_patterns/asFewOfPattern.md), [pattern](../../string/4_patterns/pattern.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
