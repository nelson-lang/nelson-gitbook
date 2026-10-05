#import "../nelson_help.typ": *

= geofit <statistics:2_probability_distributions.geofit>

Estimation de probabilite geometrique

== Syntaxe

- #raw("pHat = geofit(x)");
- #raw("[pHat, pCI] = geofit(x, alpha)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide d'entiers finis positifs ou nuls : nombres d'echecs avant succes.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.

== Argument de sortie

/ pHat: tableau : estimations de probabilite de succes.
/ pCI: tableau : intervalles de confiance des estimations.

== Description

#strong[geofit]; estime la probabilite de succes de la loi geometrique.


== Exemple

``````matlab
x = [0 1 2 3 5 8];
[pHat, pCI] = geofit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.geolike>)[geolike];, #nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
