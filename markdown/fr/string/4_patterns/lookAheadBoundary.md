# lookAheadBoundary

Limite avant un motif.

## 📝 Syntaxe

- R = lookAheadBoundary(...)

## 📄 Description

<b>lookAheadBoundary</b> Limite avant un motif.

## 💡 Exemple

```matlab
pat = lookAheadBoundary(digitsPattern(3)); extract("abc123", lettersPattern(3) + pat)
```

## 🔗 Voir aussi

[lookBehindBoundary](../../string/lookBehindBoundary.md), [textBoundary](../../string/textBoundary.md), [pattern](../../string/pattern.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
