#import "../nelson_help.typ": *

= ttest <statistics:3_hypothesis_tests.ttest>

Test t a un echantillon ou apparie

== Syntaxe

- #raw("h = ttest(x)");
- #raw("h = ttest(x, m)");
- #raw("h = ttest(x, y)");
- #raw("[h, p, ci, stats] = ttest(..., 'Alpha', alpha, 'Tail', tail, 'Dim', dim)");

== Argument d'entrée

/ x: tableau reel : donnees d'echantillon.
/ m: scalaire reel, 0 par defaut : moyenne supposee.
/ y: tableau reel de meme taille que x : echantillon apparie.
/ alpha: scalaire dans (0,1), 0.05 par defaut : niveau de signification.
/ tail: 'both', 'right' ou 'left'.
/ dim: entier positif : dimension de calcul.

== Argument de sortie

/ h: tableau logique : decision du test.
/ p: tableau : p-values.
/ ci: tableau a 2 lignes : intervalles de confiance de la difference moyenne.
/ stats: structure avec les champs tstat, df et sd.

== Description

#strong[ttest]; effectue un test t le long de la premiere dimension non singleton sauf si #strong[Dim]; est specifie.

 Les valeurs NaN sont ignorees dans chaque tranche testee.


== Exemple

``````matlab
x = [2 4 5 6 9];
[h, p, ci, stats] = ttest(x, 4);
[h2, p2] = ttest([4 6 7], [3 5 7], 'Tail', 'right');
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
