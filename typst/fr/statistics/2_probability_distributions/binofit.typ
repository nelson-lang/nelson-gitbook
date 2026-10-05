#import "../nelson_help.typ": *

= binofit <statistics:2_probability_distributions.binofit>

Estimation de probabilite binomiale

== Syntaxe

- #raw("pHat = binofit(x, n)");
- #raw("[pHat, pCI] = binofit(x, n, alpha)");

== Argument d'entrée

/ x: tableau reel non vide d'entiers finis positifs ou nuls : succes observes.
/ n: tableau ou scalaire reel non vide d'entiers finis positifs ou nuls : nombres d'essais. Chaque valeur doit etre superieure ou egale a la valeur correspondante dans x.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.

== Argument de sortie

/ pHat: tableau : probabilites binomiales estimees.
/ pCI: tableau : intervalles de confiance des estimations. La premiere colonne contient les bornes inferieures et la seconde les bornes superieures.

== Description

#strong[binofit]; estime les probabilites binomiales a partir des succes observes et des nombres d'essais.


== Exemple

``````matlab
x = [0 2 5 8 10];
n = 10;
[pHat, pCI] = binofit(x, n);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.binolike>)[binolike];, #nlink(<statistics:2_probability_distributions.binopdf>)[binopdf];, #nlink(<statistics:2_probability_distributions.binocdf>)[binocdf];, #nlink(<statistics:2_probability_distributions.binornd>)[binornd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
