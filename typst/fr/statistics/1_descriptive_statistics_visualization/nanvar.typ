#import "../nelson_help.typ": *

= nanvar <statistics:1_descriptive_statistics_visualization.nanvar>

Variance en ignorant les valeurs NaN.

== Syntaxe

- #raw("v = nanvar(X)");
- #raw("v = nanvar(X, w)");
- #raw("v = nanvar(X, w, dim)");
- #raw("v = nanvar(X, w, vecdim)");
- #raw("v = nanvar(X, w, 'all')");

== Description

#strong[nanvar]; calcule la variance apres suppression des valeurs #strong[NaN]; dans chaque tranche traitee.

 #strong[w]; peut valoir #strong[0];, #strong[1];, etre vide pour le comportement par defaut, ou etre un vecteur de poids non negatifs pour une dimension scalaire.


== Exemple

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
v = nanvar(X)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanstd>)[nanstd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
