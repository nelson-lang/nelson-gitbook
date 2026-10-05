#import "../nelson_help.typ": *

= gamrnd <statistics:2_probability_distributions.gamrnd>

Nombres aleatoires gamma

== Syntaxe

- #raw("r = gamrnd(a, b)");
- #raw("r = gamrnd(a, b, sz)");
- #raw("r = gamrnd(a, b, sz1, ..., szN)");

== Argument d'entrée

/ a: scalaire positif ou tableau : parametre de forme.
/ b: scalaire positif ou tableau : parametre d'echelle.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[gamrnd]; genere des valeurs aleatoires de loi gamma.


== Exemple

``````matlab
rng(0);
r = gamrnd(2, 3, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gampdf>)[gampdf];, #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf];, #nlink(<statistics:2_probability_distributions.gaminv>)[gaminv];, #nlink(<statistics:2_probability_distributions.gamstat>)[gamstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
