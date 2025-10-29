# wilkinson

Wilkinson's eigenvalue test matrix

## 📝 Syntaxe

- W = wilkinson(n)
- W = wilkinson(n, classname)

## 📥 Argument d'entrée

- n - scalar integer value: order.
- classname - row character vector or scalar string: class name desired ('double' by default).

## 📤 Argument de sortie

- W - Wilkinson's eigenvalue test matrix.

## 📄 Description

<b>W = wilkinson(n)</b> returns the wilkinson Matrix of order <b>n</b>.

## 📚 Bibliographie

https://en.wikipedia.org/wiki/Wilkinson_matrix

## 💡 Exemple

```matlab
W = wilkinson(4)
```

## 🔗 Voir aussi

[diag](../constructors_functions/diag.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
