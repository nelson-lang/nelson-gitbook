#import "../nelson_help.typ": *

= vartest <statistics:3_hypothesis_tests.vartest>

Test du chi-square pour une variance

== Syntaxe

- #raw("h = vartest(x, v)");
- #raw("h = vartest(x, v, 'Alpha', alpha)");
- #raw("h = vartest(x, v, 'Tail', tail)");
- #raw("h = vartest(x, v, 'Dim', dim)");
- #raw("[h, p, ci, stats] = vartest(...)");

== Argument d'entrée

/ x: tableau numerique reel : donnees d'echantillon.
/ v: scalaire reel non negatif : variance supposee.
/ alpha: scalaire dans (0,1), 0.05 par defaut : niveau de signification.
/ tail: 'both', 'right' ou 'left'.
/ dim: entier positif : dimension de calcul.

== Argument de sortie

/ h: tableau logique : decision du test.
/ p: tableau : p-values.
/ ci: tableau a 2 lignes : intervalles de confiance de la variance.
/ stats: structure avec les champs chisqstat et df.

== Description

#strong[vartest]; effectue un test de variance chi-square le long de la premiere dimension non singleton sauf si #strong[Dim]; est specifie.

 Les valeurs NaN sont ignorees dans chaque tranche testee.


== Exemple

``````matlab
x = [4.5 4.8 5.1 5.4 5.7 6.0];
[h, p, ci, stats] = vartest(x, 0.4);
[h2, p2] = vartest(x, 0.2, 'Tail', 'right');
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
