#import "../nelson_help.typ": *

= anova1 <statistics:4_anova.anova1>

Analyse de variance a un facteur.

== Syntaxe

- #raw("p = anova1(X)");
- #raw("p = anova1(X, group)");
- #raw("p = anova1(X, group, displayopt)");
- #raw("[p, tbl, stats] = anova1(...)");

== Description

#strong[anova1]; effectue une analyse de variance a un facteur. Lorsque #strong[X]; est une matrice et que #strong[group]; est vide, les colonnes sont traitees comme des groupes. Lorsque #strong[X]; est un vecteur, #strong[group]; fournit une etiquette de groupe par observation.

 #strong[displayopt]; peut valoir #strong['on']; ou #strong['off'];. Les observations #strong[NaN]; sont omises.


== Exemple

``````matlab
X = [6 7 8; 5 7 9; 4 8 NaN; 6 9 10];
[p, tbl, stats] = anova1(X, [], 'off')
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:7_clustering_anomaly_detection.grpstats>)[grpstats];, #nlink(<statistics:3_hypothesis_tests.vartest>)[vartest];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
