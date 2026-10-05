#import "../nelson_help.typ": *

= nanstd <statistics:1_descriptive_statistics_visualization.nanstd>

Ecart type en ignorant les valeurs NaN.

== Syntaxe

- #raw("s = nanstd(X)");
- #raw("s = nanstd(X, flag)");
- #raw("s = nanstd(X, flag, dim)");
- #raw("s = nanstd(X, flag, vecdim)");
- #raw("s = nanstd(X, flag, 'all')");

== Description

#strong[nanstd]; calcule l'ecart type apres suppression des valeurs #strong[NaN]; dans chaque tranche traitee.

 #strong[flag]; vaut #strong[0]; pour la normalisation echantillon et #strong[1]; pour la normalisation population.


== Exemple

``````matlab
X = magic(3);
X([1 6:9]) = NaN;
s = nanstd(X, 0, 2)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmean>)[nanmean];, #nlink(<statistics:1_descriptive_statistics_visualization.nanmedian>)[nanmedian];, #nlink(<statistics:1_descriptive_statistics_visualization.nanvar>)[nanvar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
