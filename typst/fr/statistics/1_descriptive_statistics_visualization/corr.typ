#import "../nelson_help.typ": *

= corr <statistics:1_descriptive_statistics_visualization.corr>

Correlation lineaire ou de rang.

== Syntaxe

- #raw("rho = corr(X)");
- #raw("rho = corr(X, Y)");
- #raw("[rho, pval] = corr(...)");
- #raw("[rho, pval] = corr(..., Name, Value)");

== Description

#strong[corr]; calcule les correlations entre paires de colonnes de #strong[X];, ou entre les colonnes de #strong[X]; et #strong[Y];.

 Les options prises en charge sont #strong[Type]; avec #strong[pearson];, #strong[spearman]; ou #strong[kendall];; #strong[Rows]; avec #strong[all];, #strong[complete]; ou #strong[pairwise];; #strong[Tail]; avec #strong[both];, #strong[right]; ou #strong[left];; et #strong[Weights]; pour les poids d'observation.


== Exemple

``````matlab
X = [1 2 3; 2 4 1; 3 NaN 2; 4 8 4; 5 10 5];
rho = corr(X, 'Rows', 'pairwise')
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.corrcoef>)[corrcoef];, #nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.tiedrank>)[tiedrank];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
