# mink

k plus petits éléments d'un tableau

## 📝 Syntaxe

- B = mink(A, k)
- [B, I] = mink(A, k)
- B = mink(A, k, dim)

## 📥 Argument d'entrée

- A - tableau numérique (vecteur ou matrice)
- k - entier positif spécifiant combien de plus petits éléments retourner
- dim - dimension optionnelle le long de laquelle opérer (par défaut : première dimension non singleton)

## 📤 Argument de sortie

- B - tableau contenant les k plus petits éléments de A le long de la dimension spécifiée
- I - indices des k plus petits éléments par rapport à A le long de la dimension spécifiée

## 📄 Description

<b>mink</b> retourne les k plus petits éléments du tableau <b>A</b>. Lorsque A est un vecteur, le résultat est les k plus petites valeurs de A. Lorsque A est une matrice, <b>mink</b> opère le long de la dimension spécifiée (ou la première dimension non singleton par défaut) et retourne les k plus petits éléments pour chaque tranche le long de cette dimension.

Si <b>k</b> est plus grand que le nombre d'éléments disponibles le long de la dimension d'opération, tous les éléments sont retournés (triés par ordre croissant). Lorsqu'il est appelé comme <b>[B, I] = mink(A, k)</b>, <b>I</b> contient les indices des éléments retournés par rapport à <b>A</b>.

## 💡 Exemples

Exemple de vecteur

```matlab

A = [5 2 4 1];
B = mink(A, 2)   % returns [1 2]
[B, I] = mink(A, 3) % returns [1 2 4] and indices [4 2 3]

```

Exemple de matrice (le long des colonnes)

```matlab

M = [4 2; 1 3];
B = mink(M, 1)   % returns [1 2] operating along first non-singleton dimension (columns)
B = mink(M, 2, 1) % returns 2 smallest per column

```

## 🔗 Voir aussi

[maxk](../elementary_functions/maxk.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
