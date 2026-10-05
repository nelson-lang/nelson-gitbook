#import "../nelson_help.typ": *

= evlike <statistics:2_probability_distributions.evlike>

Oppose de la log-vraisemblance de la loi extreme value

== Syntaxe

- #raw("nlogL = evlike(params, x)");
- #raw("[nlogL, avar] = evlike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur a deux elements : parametres de position et d'echelle.
/ x: tableau reel non vide : donnees d'echantillon.
/ censoring: tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
/ freq: tableau de valeurs finies non negatives : frequences d'observation.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: tableau 2-par-2 : matrice de covariance approchee.

== Description

#strong[evlike]; evalue l'oppose de la log-vraisemblance de la loi extreme value.


== Exemple

``````matlab
x = [-2 -1 0 1 2 3];
phat = evfit(x);
nlogL = evlike(phat, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evfit>)[evfit];, #nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
