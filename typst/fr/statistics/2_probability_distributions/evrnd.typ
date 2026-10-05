#import "../nelson_help.typ": *

= evrnd <statistics:2_probability_distributions.evrnd>

Nombres aleatoires de loi extreme value

== Syntaxe

- #raw("r = evrnd(mu, sigma)");
- #raw("r = evrnd(mu, sigma, sz)");
- #raw("r = evrnd(mu, sigma, sz1, ..., szN)");

== Argument d'entrée

/ mu: scalaire ou tableau reel : parametre de position.
/ sigma: scalaire ou tableau positif : parametre d'echelle.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[evrnd]; genere des valeurs aleatoires de loi extreme value.


== Exemple

``````matlab
rng(0);
r = evrnd(0, 1, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
