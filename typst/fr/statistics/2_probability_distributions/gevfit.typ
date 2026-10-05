#import "../nelson_help.typ": *

= gevfit <statistics:2_probability_distributions.gevfit>

Estimation des parametres de la loi extreme generalisee

== Syntaxe

- #raw("phat = gevfit(x)");
- #raw("[phat, pci] = gevfit(x, alpha)");
- #raw("[phat, pci] = gevfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = gevfit(x, alpha, censoring, freq, options)");

== Argument d'entrée

/ x: vecteur ou matrice reel fini non vide : donnees d'echantillon.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences d'observation.
/ options: structure scalaire : options d'estimation.

== Argument de sortie

/ phat: tableau : estimations des parametres de forme, d'echelle et de position.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[gevfit]; estime les parametres de la loi extreme generalisee.


== Exemple

``````matlab
x = [-1.2 -0.4 0.1 0.8 1.5 2.8 4.0];
[phat, pci] = gevfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gevlike>)[gevlike];, #nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
