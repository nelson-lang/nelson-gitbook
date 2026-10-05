#import "../nelson_help.typ": *

= ttest2 <statistics:3_hypothesis_tests.ttest2>

Test t a deux echantillons

== Syntaxe

- #raw("h = ttest2(x, y)");
- #raw("h = ttest2(x, y, 'Alpha', alpha)");
- #raw("h = ttest2(x, y, 'Tail', tail)");
- #raw("h = ttest2(x, y, 'Vartype', vartype)");
- #raw("h = ttest2(x, y, 'Dim', dim)");
- #raw("[h, p, ci, stats] = ttest2(...)");

== Argument d'entrée

/ x: tableau numerique reel : premier echantillon.
/ y: tableau numerique reel : second echantillon.
/ alpha: scalaire dans (0,1), 0.05 par defaut : niveau de signification.
/ tail: 'both', 'right' ou 'left'.
/ vartype: 'equal' par defaut ou 'unequal' pour le test de Welch.
/ dim: entier positif : dimension de calcul.

== Argument de sortie

/ h: tableau logique : decision du test.
/ p: tableau : p-values.
/ ci: tableau a 2 lignes : intervalles de confiance de la difference moyenne.
/ stats: structure avec les champs tstat, df et sd.

== Description

#strong[ttest2]; effectue un test t a deux echantillons le long de la premiere dimension non singleton sauf si #strong[Dim]; est specifie.

 Les valeurs NaN sont ignorees independamment dans chaque echantillon teste.


== Exemple

``````matlab
x = [10 11 13 15 18];
y = [7 8 8 9];
[h, p, ci, stats] = ttest2(x, y, 'Vartype', 'unequal', 'Tail', 'right');
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.ttest>)[ttest];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
