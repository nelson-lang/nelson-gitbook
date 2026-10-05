#import "../nelson_help.typ": *

= unidlike <statistics:2_probability_distributions.unidlike>

Oppose de la log-vraisemblance uniforme discrete

== Syntaxe

- #raw("nlogL = unidlike(n, x)");
- #raw("[nlogL, avar] = unidlike(n, x)");

== Argument d'entrée

/ n: scalaire entier strictement positif : valeur maximale.
/ x: tableau reel non vide d'entiers finis strictement positifs : donnees echantillon.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: scalaire : estimation de variance asymptotique.

== Description

#strong[unidlike]; retourne l'oppose de la log-vraisemblance pour des donnees de loi uniforme discrete.


== Exemple

``````matlab
x = [1 2 4 5 5];
[nlogL, avar] = unidlike(5, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unidfit>)[unidfit];, #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf];, #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf];, #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
