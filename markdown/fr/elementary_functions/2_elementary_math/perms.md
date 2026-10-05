# perms

Toutes les permutations possibles

## 📝 Syntaxe

- P = perms(v)

## 📥 Argument d'entrée

- v - vecteur.

## 📤 Argument de sortie

- P - matrice contenant toutes les permutations des éléments de v, en ordre lexicographique inverse.

## 📄 Description


<b>perms</b> retourne une matrice contenant toutes les permutations des éléments du vecteur v. Chaque ligne de P est une permutation ; il y a factorial(numel(v)) lignes, en ordre lexicographique inverse.

## 💡 Exemple



```matlab
perms([1 2 3])
```


## 🔗 Voir aussi

[nchoosek](../../elementary_functions/2_elementary_math/nchoosek.md), [factorial](../../elementary_functions/2_elementary_math/factorial.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
