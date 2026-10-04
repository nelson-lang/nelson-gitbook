# lineBoundary

Motif de debut ou de fin de ligne.

## 📝 Syntaxe

- R = lineBoundary(...)

## 📄 Description

<b>lineBoundary</b> Motif de debut ou de fin de ligne.

## 💡 Exemple

```matlab
pat = lineBoundary("start") + lettersPattern(5); extract(sprintf('first\nsecond'), pat)
```

## 🔗 Voir aussi

[textBoundary](../../string/textBoundary.md), [whitespaceBoundary](../../string/whitespaceBoundary.md), [pattern](../../string/pattern.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
