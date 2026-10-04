# setdiff

Difference ensembliste de deux tableaux.

## 📝 Syntaxe

- C = setdiff(A, B)
- [C, ia] = setdiff(A, B)

## 📥 Argument d'entrée

- A, B - Tableaux d'entree.

## 📤 Argument de sortie

- C - Valeurs triees presentes dans <b>A</b> et absentes de <b>B</b>.
- ia - Indices dans <b>A</b>.

## 📄 Description

<b>setdiff(A, B)</b> retourne les valeurs triees presentes dans <b>A</b> mais pas dans <b>B</b>.

## 💡 Exemple

```matlab
A = [5 7 1];
B = [3 1 1];
C = setdiff(A, B)
```

## 🔗 Voir aussi

[union](../data_analysis/union.md), [intersect](../data_analysis/intersect.md), [setxor](../data_analysis/setxor.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
