#import "../nelson_help.typ": *

= kstest2 <statistics:3_hypothesis_tests.kstest2>

Test de Kolmogorov-Smirnov a deux echantillons

== Syntaxe

- #raw("h = kstest2(x1, x2)");
- #raw("h = kstest2(x1, x2, 'Alpha', alpha)");
- #raw("h = kstest2(x1, x2, 'Tail', tail)");
- #raw("[h, p, ks2stat] = kstest2(...)");

== Argument d'entrée

/ x1: vecteur reel : premier echantillon.
/ x2: vecteur reel : second echantillon.
/ alpha: scalaire dans (0,1), 0.05 par defaut : niveau de signification.
/ tail: 'unequal', 'larger' ou 'smaller'.

== Argument de sortie

/ h: scalaire logique : decision du test.
/ p: p-value asymptotique.
/ ks2stat: statistique du test a deux echantillons.

== Description

#strong[kstest2]; compare les distributions empiriques de deux vecteurs d'echantillons.

 Les valeurs NaN sont ignorees independamment avant le tri et le calcul des distributions empiriques.


== Exemple

``````matlab
x1 = [1 2 3 4 5];
x2 = [2 3 4 6 8 10];
[h, p, ks2stat] = kstest2(x1, x2);
[h2, p2] = kstest2(x1, x2, 'Tail', 'larger');
``````


== Voir aussi

#nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:3_hypothesis_tests.ttest2>)[ttest2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
