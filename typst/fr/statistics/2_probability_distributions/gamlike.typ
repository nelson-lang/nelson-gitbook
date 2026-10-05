#import "../nelson_help.typ": *

= gamlike <statistics:2_probability_distributions.gamlike>

Log-vraisemblance negative gamma

== Syntaxe

- #raw("nlogL = gamlike(params, x)");
- #raw("[nlogL, avar] = gamlike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur a deux elements : parametres de forme et d'echelle.
/ x: tableau reel positif fini non vide : donnees d'echantillon.
/ censoring: tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences des observations.

== Argument de sortie

/ nlogL: scalaire : log-vraisemblance negative.
/ avar: tableau 2 par 2 : matrice de covariance approchee.

== Description

#strong[gamlike]; evalue la log-vraisemblance negative de la distribution gamma.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
phat = gamfit(x);
nlogL = gamlike(phat, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gamfit>)[gamfit];, #nlink(<statistics:2_probability_distributions.gampdf>)[gampdf];, #nlink(<statistics:2_probability_distributions.gamcdf>)[gamcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
