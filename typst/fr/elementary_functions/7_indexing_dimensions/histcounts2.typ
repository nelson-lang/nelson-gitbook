#import "../nelson_help.typ": *

= histcounts2 <elementary_functions:7_indexing_dimensions.histcounts2>

Comptage par classes d'histogramme bivarie.

== Syntaxe

- #raw("N = histcounts2(X, Y)");
- #raw("N = histcounts2(X, Y, nbins)");
- #raw("N = histcounts2(X, Y, Xedges, Yedges)");
- #raw("N = histcounts2(..., 'Normalization', method)");
- #raw("[N, Xedges, Yedges] = histcounts2(...)");

== Argument d'entrée

/ X: tableau numerique ou logique contenant la premiere coordonnee de chaque paire.
/ Y: tableau numerique ou logique contenant la seconde coordonnee de chaque paire. X et Y doivent avoir le meme nombre d'elements.
/ nbins: scalaire entier positif, ou vecteur a deux elements \[nx ny\] donnant le nombre de classes dans chaque dimension.
/ Xedges, Yedges: vecteurs numeriques strictement croissants definissant les bornes des classes selon X et Y.
/ method: normalisation : 'count' (defaut), 'probability', 'countdensity', 'pdf', 'cumcount' ou 'cdf'.

== Argument de sortie

/ N: matrice des effectifs. N(i, j) compte les paires appartenant a la i-eme classe de X et a la j-eme classe de Y.
/ Xedges: bornes de classes utilisees selon la dimension X.
/ Yedges: bornes de classes utilisees selon la dimension Y.

== Description

histcounts2 repartit les paires (X, Y) sur une grille de classes bidimensionnelle et compte le nombre de paires dans chaque classe.

 N(i, j) compte les paires pour lesquelles Xedges(i) \<\= X \< Xedges(i+1) et Yedges(j) \<\= Y \< Yedges(j+1). La derniere classe de chaque dimension inclut ses deux bornes.

 Vous pouvez fournir un nombre de classes (scalaire ou \[nx ny\]) ou les vecteurs de bornes explicites Xedges et Yedges. Lorsqu'un nombre de classes est demande, les bornes sont choisies sur une grille reguliere, comme #nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts];. Les paires ayant une coordonnee NaN sont ignorees.


== Fonction(s) utilisée(s)

histcounts2

== Exemples

Compter des paires sur une grille 2-D explicite.

``````matlab
x = [1 2 3];
y = [1 2 3];
N = histcounts2(x, y, [0 2 4], [0 2 4])
``````

Bornes choisies automatiquement avec un nombre de classes.

``````matlab
[N, xe, ye] = histcounts2([1 5 10 3 7], [2 4 6 8 1], 3)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts];, #nlink(<data_analysis:discretize>)[discretize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
