# del2

Laplacien discret.

## 📝 Syntaxe

- L = del2(U)
- L = del2(U, h)
- L = del2(U, hx, hy)

## 📥 Argument d'entrée

- U - Tableau d'entree : vecteur, matrice ou tableau multidimensionnel.
- h - Espacement scalaire uniforme entre les points dans chaque direction, 1 (par defaut).
- hx, hy - Espacement scalaire entre les points, hx le long des colonnes (direction x) et hy le long des lignes (direction y).

## 📤 Argument de sortie

- L - Laplacien discret, tableau de meme taille et de meme classe que U.

## 📄 Description

<b>del2(U)</b> retourne une approximation discrete du Laplacien de U divisee par 2\*ndims(U).

Pour un element interieur d'une matrice, la valeur est la moyenne de ses quatre voisins moins l'element lui-meme : L(i,j) = (U(i-1,j) + U(i+1,j) + U(i,j-1) + U(i,j+1))/4 - U(i,j).

Sur les bords, une extrapolation par difference seconde est utilisee afin que L ait la meme taille que U.

<b>del2(U, h)</b> utilise l'espacement uniforme h dans chaque direction, et <b>del2(U, hx, hy)</b> utilise l'espacement hx le long des colonnes et hy le long des lignes.

## 💡 Exemple

```matlab
L = del2(magic(4))
```

## 🔗 Voir aussi

[gradient](../../linear_algebra/gradient.md), [diff](../../linear_algebra/diff.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
