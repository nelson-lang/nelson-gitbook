#import "../nelson_help.typ": *

= lognlike <statistics:2_probability_distributions.lognlike>

Log-vraisemblance negative lognormale

== Syntaxe

- #raw("nlogL = lognlike(params, x)");
- #raw("[nlogL, avar] = lognlike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur a deux elements : parametres mu et sigma.
/ x: tableau reel positif fini non vide : donnees d'echantillon.
/ censoring: tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences des observations.

== Argument de sortie

/ nlogL: scalaire : log-vraisemblance negative.
/ avar: tableau 2 par 2 : matrice de covariance approchee.

== Description

#strong[lognlike]; evalue la log-vraisemblance negative de la distribution lognormale.


== Exemple

``````matlab
x = [0.5 1 2 3 5 8];
phat = lognfit(x);
nlogL = lognlike(phat, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.lognfit>)[lognfit];, #nlink(<statistics:2_probability_distributions.lognpdf>)[lognpdf];, #nlink(<statistics:2_probability_distributions.logncdf>)[logncdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
