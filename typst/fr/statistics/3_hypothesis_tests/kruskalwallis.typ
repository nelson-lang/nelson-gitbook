#import "../nelson_help.typ": *

= kruskalwallis <statistics:3_hypothesis_tests.kruskalwallis>

Analyse de variance de Kruskal-Wallis par rangs.

== Syntaxe

- #raw("p = kruskalwallis(X)");
- #raw("p = kruskalwallis(X, group)");
- #raw("p = kruskalwallis(X, group, displayopt)");
- #raw("[p, tbl, stats] = kruskalwallis(...)");

== Description

#strong[kruskalwallis]; effectue une analyse de variance non parametrique a un facteur par rangs. Lorsque #strong[X]; est une matrice et que #strong[group]; est vide, les colonnes sont traitees comme des groupes. Lorsque #strong[X]; est un vecteur, #strong[group]; fournit une etiquette de groupe par observation.

 #strong[displayopt]; peut valoir #strong['on']; ou #strong['off'];. Les observations #strong[NaN]; sont omises.


== Exemple

``````matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = kruskalwallis(X, [], 'off')
``````


== Voir aussi

#nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:2_probability_distributions.chi2cdf>)[chi2cdf];, #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
