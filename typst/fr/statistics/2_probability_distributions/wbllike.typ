#import "../nelson_help.typ": *

= wbllike <statistics:2_probability_distributions.wbllike>

Oppose de la log-vraisemblance de la loi Weibull

== Syntaxe

- #raw("nlogL = wbllike(params, x)");
- #raw("[nlogL, avar] = wbllike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur a deux elements : parametres d'echelle et de forme.
/ x: tableau reel positif fini non vide : donnees d'echantillon.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences d'observation.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: tableau 2-par-2 : matrice de covariance approchee.

== Description

#strong[wbllike]; evalue l'oppose de la log-vraisemblance de la loi Weibull.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
phat = wblfit(x);
nlogL = wbllike(phat, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.wblfit>)[wblfit];, #nlink(<statistics:2_probability_distributions.wblpdf>)[wblpdf];, #nlink(<statistics:2_probability_distributions.wblcdf>)[wblcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
