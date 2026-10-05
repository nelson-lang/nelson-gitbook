#import "../nelson_help.typ": *

= evfit <statistics:2_probability_distributions.evfit>

Estimation des parametres de la loi extreme value

== Syntaxe

- #raw("phat = evfit(x)");
- #raw("[phat, pci] = evfit(x, alpha)");
- #raw("[phat, pci] = evfit(x, alpha, censoring, freq)");
- #raw("[phat, pci] = evfit(x, alpha, censoring, freq, options)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide : donnees d'echantillon.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences d'observation.
/ options: structure scalaire : options acceptees pour compatibilite.

== Argument de sortie

/ phat: tableau : estimations des parametres de position et d'echelle.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[evfit]; estime les parametres de la loi extreme value.


== Exemple

``````matlab
x = [-2 -1 0 1 2 3];
[phat, pci] = evfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evlike>)[evlike];, #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
