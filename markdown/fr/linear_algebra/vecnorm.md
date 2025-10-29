# vecnorm

Norme par vecteur.

## 📝 Syntaxe

- N = vecnorm(A)
- N = vecnorm(A, p)
- N = vecnorm(A, p, dim)

## 📥 Argument d'entrée

- A - vector, matrix or multidimensional array
- p - Norm type: 2 (default), a positive scalar, or Inf.
- dim - positive integer scalar

## 📤 Argument de sortie

- n - norm: scalar or vector

## 📄 Description

<b>vecnorm</b> calcule la norme 2 ou norme Euclidienne du tableau d'entrée <b>A</b>

Si <b>A</b> est un vecteur, <b>vecnorm</b> retourne la norme du vecteur.

Si <b>A</b> est une matrice, <b>vecnorm</b> retourne la norme de chaque colonne.

Pour les tableaux multidimensionnels, <b>vecnorm</b> retourne la norme le long de la première dimension du tableau dont la taille n'est pas égale à 1.

Pour calculer la norme p généralisée du vecteur, utilisez la syntaxe <b>N = vecnorm(A, p)</b>.

Pour opérer le long d'une dimension spécifique dim, la fonction peut être appelée comme <b>N = vecnorm(A, p, dim)</b>.

Dans ce cas, la taille de la dimension spécifiée devient 1, tandis que les tailles des autres dimensions restent inchangées.

## 💡 Exemple

```matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
n = vecnorm(A)
n = vecnorm(A, 2, 2)
n = vecnorm(A, 1)

```

## 🔗 Voir aussi

[norm](../elementary_functions/norm.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.3.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
