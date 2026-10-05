#import "../nelson_help.typ": *

= mean <statistics:1_descriptive_statistics_visualization.mean>

Moyenne des éléments d'un tableau.

== Syntaxe

- #raw("R = mean(M)");
- #raw("R = mean(M, d)");
- #raw("R = mean(M, 'all')");
- #raw("R = mean(M, d, t)");
- #raw("R = mean(M, 'all', t)");
- #raw("R = mean(M, d, t, f)");
- #raw("R = mean(M, 'all', t, f)");

== Argument d'entrée

/ M: un tableau de double, single, entiers, ...
/ d: dimension le long de laquelle opérer : scalaire entier positif.
/ t: une chaîne : 'default', 'double' ou 'native'.
/ f: une chaîne : 'includenan' ou 'omitnan'.

== Argument de sortie

/ R: Moyenne des éléments du tableau.

== Description

#strong[R \= mean(M)]; renvoie la moyenne (valeur moyenne) des éléments du tableau M.

 La moyenne arithmétique d'un ensemble de valeurs

 #latex("x_1, x_2, \\ldots, x_n"); est définie comme :

 #latex("\\bar{x} = \\frac{1}{n} \\sum_{i=1}^{n} x_i"); où

 #latex("n"); est le nombre d'éléments.


== Fonction(s) utilisée(s)

median mode std var

== Exemple

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = mean(M, 'native')
``````


== Voir aussi

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
