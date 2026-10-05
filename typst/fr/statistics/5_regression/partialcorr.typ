#import "../nelson_help.typ": *

= partialcorr <statistics:5_regression.partialcorr>

Coefficients de correlation partielle lineaire ou de rang.

== Syntaxe

- #raw("rho = partialcorr(X)");
- #raw("rho = partialcorr(X, Z)");
- #raw("rho = partialcorr(X, Y, Z)");
- #raw("[rho, pval] = partialcorr(...)");
- #raw("[rho, pval] = partialcorr(..., Name, Value)");

== Description

#strong[partialcorr]; calcule des correlations partielles entre colonnes en controlant d'autres variables.

 Les options prises en charge sont #strong[Type]; avec #strong[pearson]; ou #strong[spearman];, #strong[Rows]; avec #strong[all];, #strong[complete]; ou #strong[pairwise];, et #strong[Tail]; avec #strong[both];, #strong[right]; ou #strong[left];.


== Exemple

``````matlab
X = [1 2 3; 2 4 1; 3 5 2; 4 8 4; 5 10 5];
Z = [1 0; 1 1; 2 1; 2 0; 3 1];
rho = partialcorr(X, Z)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.corr>)[corr];, #nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef];, #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
