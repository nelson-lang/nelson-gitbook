# compan

Matrice compagnon.

## 📝 Syntaxe

- A = compan(c)

## 📥 Argument d'entrée

- c - un vecteur de coefficients polynomiaux, en puissances decroissantes.

## 📤 Argument de sortie

- A - la matrice compagnon dont la premiere ligne est <b>-c(2:end) / c(1)</b> et dont la premiere sous-diagonale vaut un.

## 📄 Description

<b>compan</b> retourne la matrice compagnon du polynome dont les coefficients sont <b>c</b>.

Les valeurs propres de la matrice compagnon sont les racines du polynome, donc <b>eig(compan(c))</b> et <b>roots(c)</b> donnent les memes valeurs.

Pour un vecteur de longueur n, le resultat est une matrice (n-1) par (n-1). Un coefficient unique retourne une matrice vide.

## 💡 Exemple

```matlab
A = compan([1 -6 11 -6])
r = eig(A)

```

## 🔗 Voir aussi

[roots](../polynomial_functions/roots.md), [poly](../polynomial_functions/poly.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
