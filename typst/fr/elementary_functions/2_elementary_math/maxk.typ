#import "../nelson_help.typ": *

= maxk <elementary_functions:2_elementary_math.maxk>

k plus grands éléments d'un tableau

== Syntaxe

- #raw("B = maxk(A, k)");
- #raw("[B, I] = maxk(A, k)");
- #raw("B = maxk(A, k, dim)");

== Argument d'entrée

/ A: tableau numérique (vecteur ou matrice)
/ k: entier positif spécifiant combien de plus grands éléments retourner
/ dim: dimension optionnelle le long de laquelle opérer (par défaut : première dimension non singleton)

== Argument de sortie

/ B: tableau contenant les k plus grands éléments de A le long de la dimension spécifiée
/ I: indices des k plus grands éléments par rapport à A le long de la dimension spécifiée

== Description

#strong[maxk]; retourne les k plus grands éléments du tableau #strong[A];. Lorsque A est un vecteur, le résultat est les k plus grandes valeurs de A. Lorsque A est une matrice, #strong[maxk]; opère le long de la dimension spécifiée (ou la première dimension non singleton par défaut) et retourne les k plus grands éléments pour chaque tranche le long de cette dimension.

 Si #strong[k]; est plus grand que le nombre d'éléments disponibles le long de la dimension d'opération, tous les éléments sont retournés (triés par ordre décroissant). Lorsqu'il est appelé comme #strong[\[B, I\] \= maxk(A, k)];,#strong[I]; contient les indices des éléments retournés par rapport à #strong[A];.


== Exemples

Exemple de vecteur

``````matlab

A = [5 2 4 1];
B = maxk(A, 2)   % returns [5 4]
[B, I] = maxk(A, 3) % returns [5 4 2] and indices [1 3 2]
            
``````

Exemple de matrice (le long des colonnes)

``````matlab

M = [4 2; 1 3];
B = maxk(M, 1)   % returns [4 3] operating along first non-singleton dimension (columns)
B = maxk(M, 2, 1) % returns 2 largest per column
            
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.mink>)[mink];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
