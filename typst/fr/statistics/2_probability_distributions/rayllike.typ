#import "../nelson_help.typ": *

= rayllike <statistics:2_probability_distributions.rayllike>

Log-vraisemblance negative Rayleigh

== Syntaxe

- #raw("nlogL = rayllike(b, x)");
- #raw("[nlogL, avar] = rayllike(b, x, censoring, freq)");

== Argument d'entrée

/ b: scalaire positif : parametre d'echelle.
/ x: tableau reel non negatif fini non vide : donnees d'echantillon.
/ censoring: tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences des observations.

== Argument de sortie

/ nlogL: scalaire : log-vraisemblance negative.
/ avar: scalaire : variance approchee.

== Description

#strong[rayllike]; evalue la log-vraisemblance negative de la distribution Rayleigh.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
b = raylfit(x);
nlogL = rayllike(b, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylfit>)[raylfit];, #nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
