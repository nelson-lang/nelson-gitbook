#import "nelson_help.typ": *

= min <data_analysis:min>

Valeurs minimales d'un tableau.

== Syntaxe

- #raw("M = min(A)");
- #raw("[M, I] = min(A)");
- #raw("M = min(A, [], dim)");
- #raw("[M, I] = min(A, [], dim)");
- #raw("M = min(A, [], dim, 'omitnan')");
- #raw("[M, I] = min(A, [], dim, 'includenan')");
- #raw("[M, I] = min(A, [], 'all')");
- #raw("[M, I] = min(A, [], 'all', 'omitnan')");
- #raw("[M, I] = min(A, [], 'all', 'includenan')");
- #raw("C = min(A, B)");
- #raw("C = min(A, B, 'omitnan')");
- #raw("C = min(A, B, 'includenan')");

== Argument d'entrée

/ A: une variable
/ dim: entier positif scalaire (dimension le long de laquelle opérer)
/ 'omitnan': ignore toutes les valeurs NaN. comportement par défaut. min renverra le premier élément si tous les éléments sont NaN.
/ 'includenan': inclut les valeurs NaN.
/ 'all': trouve le minimum sur tous les éléments.

== Argument de sortie

/ M: Valeurs minimales de A.
/ I: Indices des valeurs minimales de A.
/ C: Éléments minimaux de A ou B.

== Description

#strong[min]; trouve les valeurs minimales dans un tableau.

 Si #strong[A]; est une matrice alors #strong[M \= min(A)]; est un vecteur ligne contenant la valeur minimale de chaque colonne.

 Si #strong[A]; est un vecteur alors #strong[M \= min(A)]; renverra le minimum de #strong[A];.

 Si #strong[A]; est un nombre complexe alors #strong[M \= min(A)]; renverra le nombre complexe ayant la plus grande magnitude.


== Exemple

``````matlab
A = [1 2 3; 4 5 6];
M = min(A)
M = min(A, [], 'all')
``````


== Voir aussi

#nlink(<data_analysis:max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
