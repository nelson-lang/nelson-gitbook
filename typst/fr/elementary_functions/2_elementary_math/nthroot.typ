#import "../nelson_help.typ": *

= nthroot <elementary_functions:2_elementary_math.nthroot>

La racine 𝑛-ième réelle d'un nombre réel.

== Syntaxe

- #raw("Y = nthroot(X, N)");

== Argument d'entrée

/ X: Tableau d'entrée : scalaire, vecteur, matrice ou tableau multidimensionnel.
/ N: Racines à calculer : scalaire ou tableau de même taille que X.

== Argument de sortie

/ Y: résultat de 'nthroot'.

== Description

#strong[𝑌 \= nthroot(𝑋, 𝑁)]; renvoie la racine 𝑛-ième réelle des éléments de #strong[𝑋];.

 #strong[𝑋]; et#strong[𝑁]; doivent être des scalaires réels ou des tableaux de même taille. Si un élément de#strong[𝑋]; est négatif, l'élément correspondant de#strong[𝑁]; doit être un entier impair.

 Lors du calcul de racines pour lesquelles il existe à la fois des racines réelles et complexes, la fonction #strong[power]; ne calcule efficacement que les racines complexes.

 Pour obtenir la racine réelle dans ce cas, utilisez plutôt la fonction nthroot.


== Exemple

``````matlab
X = [-2 -3 -2; 4 -2 -5]
N = [1 -1 3; 1/2 5 3]
Y = nthroot(X, N)
``````


== Voir aussi

#nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.6.0], [version initiale],
)

// Auteur: Allan CORNET
