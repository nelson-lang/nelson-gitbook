#import "../nelson_help.typ": *

= std <statistics:1_descriptive_statistics_visualization.std>

Écart type

== Syntaxe

- #raw("S = std(M)");

== Argument d'entrée

/ M: un vecteur, une matrice ou un tableau multidimensionnel : single, double, int8, int16, int32, int64, uint8, uint16, uint32 ou uint64.

== Argument de sortie

/ S: Écart type de M.

== Description

#strong[S \= std(M)]; renvoie l'écart type des éléments de M le long de la première dimension du tableau dont la taille n'est pas égale à 1.

 Pour des données entières (int8, int16, int32, int64, uint8, uint16, uint32, uint64), l'écart type est calculé en double précision et #strong[S]; est de type double. La moyenne renvoyée en second résultat est aussi de type double.


== Fonction(s) utilisée(s)

var mean cov

== Exemples

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
S = std(M)
``````

Données entières

``````matlab
[S, M] = std(uint8([10 20 255]))
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
  [2.0.0], [Données entières supportées.],
)

// Auteur: Allan CORNET
