# mat2cell

Decoupe un tableau en tableau de cellules.

## 📝 Syntaxe

- C = mat2cell(A, rowSizes)
- C = mat2cell(A, rowSizes, colSizes, ...)

## 📥 Argument d'entrée

- A - Tableau d'entree.
- rowSizes - Tailles de blocs pour la premiere dimension.

## 📤 Argument de sortie

- C - Tableau de cellules contenant les blocs de A.

## 📄 Description


<b>mat2cell</b> decoupe <b>A</b> en cellules dont les tailles sont donnees pour chaque dimension.

## 💡 Exemple



```matlab
C = mat2cell(reshape(1:12, [3 4]), [1 2], [3 1])
```


## 🔗 Voir aussi

[num2cell](../data_structures/num2cell.md), [cell2mat](../data_structures/cell2mat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
