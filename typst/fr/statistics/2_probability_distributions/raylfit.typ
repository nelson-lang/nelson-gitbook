#import "../nelson_help.typ": *

= raylfit <statistics:2_probability_distributions.raylfit>

Estimation de l'echelle Rayleigh

== Syntaxe

- #raw("phat = raylfit(x)");
- #raw("[phat, pci] = raylfit(x, alpha)");
- #raw("[phat, pci] = raylfit(x, alpha, censoring, freq)");

== Argument d'entrée

/ x: vecteur ou matrice reel non negatif fini non vide : donnees d'echantillon.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences des observations.

== Argument de sortie

/ phat: tableau : estimations du parametre d'echelle.
/ pci: tableau : intervalles de confiance des estimations.

== Description

#strong[raylfit]; estime le parametre d'echelle de la distribution Rayleigh.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = raylfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.rayllike>)[rayllike];, #nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
