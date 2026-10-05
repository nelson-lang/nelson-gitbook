#import "../nelson_help.typ": *

= binornd <statistics:2_probability_distributions.binornd>

Nombres aleatoires binomiaux

== Syntaxe

- #raw("r = binornd(n, p)");
- #raw("r = binornd(n, p, sz)");
- #raw("r = binornd(n, p, sz1, ..., szN)");

== Argument d'entrée

/ n: scalaire entier positif ou nul ou tableau : nombre d'essais.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[binornd]; genere des valeurs aleatoires de loi binomiale.


== Exemple

``````matlab
rng(0);
r = binornd(10, 0.3, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binoinv>)[binoinv];, #nlink(<statistics:2_probability_distributions.binostat>)[binostat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
