#import "../nelson_help.typ": *

= anova2 <statistics:4_anova.anova2>

Analyse de variance a deux facteurs.

== Syntaxe

- #raw("p = anova2(Y)");
- #raw("p = anova2(Y, reps)");
- #raw("p = anova2(Y, reps, displayopt)");
- #raw("[p, tbl, stats] = anova2(...)");

== Description

#strong[anova2]; effectue une analyse de variance equilibree a deux facteurs. Les lignes representent les niveaux du facteur ligne et les colonnes les niveaux du facteur colonne.

 Lorsque #strong[reps]; est superieur a un, chaque niveau du facteur ligne occupe #strong[reps]; lignes consecutives. Les p-values retournees testent les colonnes, les lignes et l'interaction. Sans repetition, l'interaction n'est pas estimee.

 #strong[displayopt]; peut valoir #strong['on']; ou #strong['off'];.


== Exemple

``````matlab
Y = [8 9 6; 7 8 5; 9 10 7; 12 14 11; 13 15 12; 11 13 10];
[p, tbl, stats] = anova2(Y, 2, 'off')
``````


== Voir aussi

#nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:2_probability_distributions.fcdf>)[fcdf];, #nlink(<statistics:3_hypothesis_tests.vartest2>)[vartest2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
