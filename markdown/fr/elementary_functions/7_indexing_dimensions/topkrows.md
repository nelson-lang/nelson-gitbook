# topkrows

Les k premières lignes triées d'une matrice.

## 📝 Syntaxe

- B = topkrows(A, k)
- B = topkrows(A, k, col)
- B = topkrows(A, k, col, direction)
- [B, I] = topkrows(...)

## 📥 Argument d'entrée

- A - une matrice.
- k - le nombre de lignes à renvoyer.
- col - les colonnes utilisées pour le tri (toutes par défaut).
- direction - <b>'descend'</b> (par défaut) ou <b>'ascend'</b>.

## 📤 Argument de sortie

- B - les <b>k</b> premières lignes de la matrice triée.
- I - les indices tels que <b>B = A(I, :)</b>.

## 📄 Description


<b>B = topkrows(A, k)</b> renvoie les <b>k</b> premières lignes de <b>A</b> triées par ordre décroissant.

## 💡 Exemple



```matlab
[B, I] = topkrows([3 1; 1 2; 2 9], 2)
```


## 🔗 Voir aussi

[sortrows](../../elementary_functions/7_indexing_dimensions/sortrows.md), [issortedrows](../../elementary_functions/7_indexing_dimensions/issortedrows.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
