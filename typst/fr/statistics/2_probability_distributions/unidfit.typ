#import "../nelson_help.typ": *

= unidfit <statistics:2_probability_distributions.unidfit>

Estimation du maximum uniforme discret

== Syntaxe

- #raw("nHat = unidfit(x)");
- #raw("[nHat, nCI] = unidfit(x, alpha)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide d'entiers finis strictement positifs : donnees echantillon.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.

== Argument de sortie

/ nHat: tableau : estimations de la valeur entiere maximale.
/ nCI: tableau : intervalles de confiance des estimations.

== Description

#strong[unidfit]; estime la valeur maximale d'une loi uniforme discrete sur les entiers de 1 a n.


== Exemple

``````matlab
x = [1 2 4 5 5];
[nHat, nCI] = unidfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unidlike>)[unidlike];, #nlink(<statistics:2_probability_distributions.unidpdf>)[unidpdf];, #nlink(<statistics:2_probability_distributions.unidcdf>)[unidcdf];, #nlink(<statistics:2_probability_distributions.unidrnd>)[unidrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
