# issortedrows

Détermine si les lignes d'une matrice sont triées.

## 📝 Syntaxe

- tf = issortedrows(A)
- tf = issortedrows(A, col)
- tf = issortedrows(A, ..., direction)

## 📥 Argument d'entrée

- A - une matrice.
- col - les colonnes utilisées pour la comparaison.
- direction - <b>'ascend'</b> (par défaut) ou <b>'descend'</b>.

## 📤 Argument de sortie

- tf - un logique : <b>true</b> si les lignes de <b>A</b> sont triées.

## 📄 Description


<b>tf = issortedrows(A)</b> renvoie <b>true</b> si les lignes de <b>A</b> sont triées par ordre croissant. 

Fournissez <b>col</b> et <b>direction</b> pour correspondre au tri de <b>sortrows</b>.

## 💡 Exemple



```matlab
issortedrows([1 2; 3 4])
```


## 🔗 Voir aussi

[sortrows](../../elementary_functions/7_indexing_dimensions/sortrows.md), [topkrows](../../elementary_functions/7_indexing_dimensions/topkrows.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
