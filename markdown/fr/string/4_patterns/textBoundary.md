# textBoundary

Motif de debut ou de fin de texte.

## 📝 Syntaxe

- R = textBoundary(...)

## 📄 Description


<b>textBoundary</b> Motif de debut ou de fin de texte.

## 💡 Exemple



```matlab
pat = textBoundary("start") + lettersPattern(3) + textBoundary("end"); extract("abc", pat)
```


## 🔗 Voir aussi

[lineBoundary](../../string/4_patterns/lineBoundary.md), [whitespaceBoundary](../../string/4_patterns/whitespaceBoundary.md), [pattern](../../string/4_patterns/pattern.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
