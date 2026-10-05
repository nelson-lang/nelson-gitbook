#import "../nelson_help.typ": *

= raylrnd <statistics:2_probability_distributions.raylrnd>

Nombres aleatoires Rayleigh

== Syntaxe

- #raw("r = raylrnd(b)");
- #raw("r = raylrnd(b, sz)");
- #raw("r = raylrnd(b, sz1, ..., szN)");

== Argument d'entrée

/ b: scalaire positif ou tableau : parametre d'echelle.
/ sz: vecteur de taille ou scalaires de taille pour la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[raylrnd]; genere des nombres aleatoires Rayleigh avec le generateur global de Nelson.


== Exemple

``````matlab
rng(0);
r = raylrnd(2, [2 3]);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylstat>)[raylstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
