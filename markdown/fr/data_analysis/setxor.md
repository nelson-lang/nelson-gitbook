# setxor

Ou exclusif ensembliste de deux tableaux.

## 📝 Syntaxe

- C = setxor(A, B)
- [C, ia, ib] = setxor(A, B)

## 📥 Argument d'entrée

- A, B - Tableaux d'entree.

## 📤 Argument de sortie

- C - Valeurs triees presentes dans un seul des deux tableaux.
- ia, ib - Indices dans <b>A</b> et <b>B</b>.

## 📄 Description


<b>setxor(A, B)</b> retourne les valeurs presentes dans <b>A</b> ou <b>B</b>, mais pas dans les deux.

## 💡 Exemple



```matlab
A = [5 7 1];
B = [3 1 1];
C = setxor(A, B)
```


## 🔗 Voir aussi

[union](../data_analysis/union.md), [intersect](../data_analysis/intersect.md), [setdiff](../data_analysis/setdiff.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
