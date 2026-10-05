# any

Vérifie si au moins un élément d'une matrice satisfait une condition.

## 📝 Syntaxe

- R = any(M)
- R = any(M, dim)
- R = any(M, 'all')

## 📥 Argument d'entrée

- M - une matrice.
- dim - entier : dimension sur laquelle opérer.
- 'all' - teste tous les éléments de M.

## 📤 Argument de sortie

- R - matrice logique.

## 📄 Description


<b>any</b> renvoie vrai si au moins un élément d'une matrice satisfait une condition. 

Les matrices sparse single et sparse single complexes sont prises en charge. Les zeros implicites du sparse participent au test logique comme des valeurs nulles.

## 💡 Exemples



```matlab
any([33, 22; 11, 0])
any([33, 22; 11, 0], 2)
```
Test logique sur une matrice sparse single.

```matlab
S = sparse(single([0 0; 2 0]));
R = any(S, 2)
```


## 🔗 Voir aussi

[all](../operators/all.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.6.0   | gère l'argument d'entrée 'all'
       |
| 2.0.0   | prise en charge des matrices sparse single et sparse single complexes. |

<!--
## 👤 Auteur

Allan CORNET
-->
