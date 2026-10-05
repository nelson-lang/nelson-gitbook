#import "../nelson_help.typ": *

= moment <statistics:1_descriptive_statistics_visualization.moment>

Moment centre d'un jeu de donnees.

== Syntaxe

- #raw("m = moment(X, order)");
- #raw("m = moment(X, order, dim)");
- #raw("m = moment(X, order, vecdim)");
- #raw("m = moment(X, order, 'all')");

== Description

#strong[moment]; calcule le moment centre d'ordre entier positif demande.

 Le moment centre du premier ordre vaut zero. Le moment centre du second ordre utilise un diviseur #strong[n];.


== Exemple

``````matlab
X = [1 2 4; 2 4 8; 3 8 13];
m = moment(X, 3)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.skewness>)[skewness];, #nlink(<statistics:1_descriptive_statistics_visualization.kurtosis>)[kurtosis];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
