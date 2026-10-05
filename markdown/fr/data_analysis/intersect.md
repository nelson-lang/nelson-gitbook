# intersect

Intersection ensembliste de deux tableaux.

## 📝 Syntaxe

- C = intersect(A, B)
- [C, ia, ib] = intersect(A, B)

## 📥 Argument d'entrée

- A, B - Tableaux d'entree.

## 📤 Argument de sortie

- C - Valeurs triees communes a <b>A</b> et <b>B</b>.
- ia, ib - Indices dans <b>A</b> et <b>B</b>.

## 📄 Description


<b>intersect(A, B)</b> retourne les valeurs triees presentes dans les deux tableaux.

## 💡 Exemple



```matlab
A = [5 7 1];
B = [3 1 1];
C = intersect(A, B)
```


## 🔗 Voir aussi

[union](../data_analysis/union.md), [setdiff](../data_analysis/setdiff.md), [setxor](../data_analysis/setxor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
