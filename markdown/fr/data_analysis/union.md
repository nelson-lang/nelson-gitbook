# union

Union ensembliste de deux tableaux.

## 📝 Syntaxe

- C = union(A, B)
- [C, ia, ib] = union(A, B)

## 📥 Argument d'entrée

- A, B - Tableaux d'entrée.

## 📤 Argument de sortie

- C - Valeurs triees presentes dans <b>A</b> ou <b>B</b>.
- ia, ib - Indices dans <b>A</b> et <b>B</b>.

## 📄 Description


<b>union(A, B)</b> retourne l'ensemble trie des valeurs presentes dans au moins un des tableaux.

## 💡 Exemple



```matlab
A = [5 7 1];
B = [3 1 1];
C = union(A, B)
```


## 🔗 Voir aussi

[intersect](../data_analysis/intersect.md), [setdiff](../data_analysis/setdiff.md), [setxor](../data_analysis/setxor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
