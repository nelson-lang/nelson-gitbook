#import "../nelson_help.typ": *

= unifrnd <statistics:2_probability_distributions.unifrnd>

Nombres aleatoires uniformes continus

== Syntaxe

- #raw("r = unifrnd(a, b)");
- #raw("r = unifrnd(a, b, sz)");
- #raw("r = unifrnd(a, b, sz1, ..., szN)");

== Argument d'entrée

/ a: scalaire reel ou tableau : borne inferieure.
/ b: scalaire reel ou tableau : borne superieure.
/ sz: vecteur de taille ou scalaires de taille pour la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[unifrnd]; genere des nombres aleatoires selon des lois uniformes continues avec le generateur global de Nelson.

 Les bornes scalaires sont etendues a la taille demandee. Les intervalles invalides produisent des valeurs NaN.


== Exemple

``````matlab
rng(0);
r = unifrnd(0, 1);
r2 = unifrnd(0, 1, [2 3]);
r3 = unifrnd(0:5, 1:6, 1, 6);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifinv>)[unifinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
