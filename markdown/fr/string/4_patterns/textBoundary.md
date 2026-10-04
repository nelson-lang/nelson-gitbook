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

[lineBoundary](../../string/lineBoundary.md), [whitespaceBoundary](../../string/whitespaceBoundary.md), [pattern](../../string/pattern.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
