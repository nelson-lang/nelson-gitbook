#import "nelson_help.typ": *

= max <data_analysis:max>

Valeurs maximales d'un tableau.

== Syntaxe

- #raw("M = max(A)");
- #raw("[M, I] = max(A)");
- #raw("M = max(A, [], dim)");
- #raw("[M, I] = max(A, [], dim)");
- #raw("M = max(A, [], dim, 'omitnan')");
- #raw("[M, I] = max(A, [], dim, 'includenan')");
- #raw("[M, I] = max(A, [], 'all')");
- #raw("[M, I] = max(A, [], 'all', 'omitnan')");
- #raw("[M, I] = max(A, [], 'all', 'includenan')");
- #raw("C = max(A, B)");
- #raw("C = max(A, B, 'omitnan')");
- #raw("C = max(A, B, 'includenan')");

== Argument d'entrée

/ A: une variable
/ dim: entier positif scalaire (dimension le long de laquelle opérer)
/ 'omitnan': ignore toutes les valeurs NaN. comportement par défaut. max renverra le premier élément si tous les éléments sont NaN.
/ 'includenan': inclut les valeurs NaN.
/ 'all': trouve le maximum sur tous les éléments.

== Argument de sortie

/ M: Valeurs maximales de A.
/ I: Indices des valeurs maximales de A.
/ C: Éléments maximums de A ou B.

== Description

#strong[max]; trouve les valeurs maximales dans un tableau.

 Si #strong[A]; est une matrice alors #strong[M \= max(A)]; est un vecteur ligne contenant la valeur maximale de chaque colonne.

 Si #strong[A]; est un vecteur alors #strong[M \= max(A)]; renverra le maximum de #strong[A];.

 Si #strong[A]; est un nombre complexe alors #strong[M \= max(A)]; renverra le nombre complexe ayant la plus grande magnitude.


== Exemple

``````matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
