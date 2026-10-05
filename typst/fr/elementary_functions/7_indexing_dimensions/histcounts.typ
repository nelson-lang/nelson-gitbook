#import "../nelson_help.typ": *

= histcounts <elementary_functions:7_indexing_dimensions.histcounts>

Comptage par classes d'histogramme.

== Syntaxe

- #raw("N = histcounts(X)");
- #raw("N = histcounts(X, nbins)");
- #raw("N = histcounts(X, edges)");
- #raw("[N, edges, bin] = histcounts(...)");

== Argument d'entrée

/ X: tableau numerique ou logique contenant les donnees a repartir en classes.
/ nbins: scalaire entier positif : nombre de classes demande.
/ edges: vecteur numerique strictement croissant definissant les bornes des classes.

== Argument de sortie

/ N: vecteur ligne des effectifs par classe.
/ edges: bornes de classes utilisees pour le comptage.
/ bin: tableau de meme taille que X contenant l'indice de classe de chaque element.

== Description

histcounts compte les elements de X qui appartiennent a des classes consecutives d'histogramme.

 Vous pouvez specifier un nombre de classes ou un vecteur de bornes strictement croissantes. La derniere classe inclut sa borne droite.


== Fonction(s) utilisée(s)

histcounts

== Exemple

Compter des valeurs avec des bornes de classes explicites.

``````matlab
x = [0 1 1 2 3 3 4];
[N, edges, bin] = histcounts(x, 0:2:4)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows];, #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
