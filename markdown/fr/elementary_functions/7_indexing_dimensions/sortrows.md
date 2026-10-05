# sortrows

Trier les lignes d'un tableau.

## 📝 Syntaxe

- B = sortrows(A)
- B = sortrows(A, col)
- [B, index] = sortrows(...)

## 📥 Argument d'entrée

- A - tableau dont les lignes sont triees.
- col - indice de colonne ou vecteur d'indices de colonnes. Un indice negatif demande l'ordre decroissant pour cette cle.

## 📤 Argument de sortie

- B - tableau dont les lignes sont triees selon les cles selectionnees.
- index - indices de lignes tels que B = A(index,:).

## 📄 Description


Les lignes dont les clés sélectionnées sont égales conservent leur ordre initial, y compris pour les clés textuelles en cellule triées par ordre décroissant. 

sortrows trie les lignes d'un tableau en utilisant une ou plusieurs colonnes comme cles. 

Les indices de colonnes negatifs demandent un ordre decroissant pour la cle correspondante.

## Fonction(s) utilisée(s)


    sort
  

## 💡 Exemple

Trier les lignes par la premiere colonne croissante et la deuxieme colonne decroissante.

```matlab
A = [2 3; 1 4; 2 1];
[B, index] = sortrows(A, [1 -2])
```


## 🔗 Voir aussi

[sort](../../data_analysis/sort.md), [issorted](../../data_analysis/issorted.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
