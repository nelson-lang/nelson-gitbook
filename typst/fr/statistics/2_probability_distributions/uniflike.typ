#import "../nelson_help.typ": *

= uniflike <statistics:2_probability_distributions.uniflike>

Oppose de la log-vraisemblance uniforme continue

== Syntaxe

- #raw("nlogL = uniflike(params, x)");
- #raw("[nlogL, avar] = uniflike(params, x, censoring, freq)");

== Argument d'entrée

/ params: vecteur a deux elements contenant les bornes inferieure et superieure.
/ x: tableau reel non vide : donnees echantillon.
/ censoring: tableau contenant les valeurs 0 ou 1. La valeur par defaut est un tableau de zeros.
/ freq: tableau fini positif ou nul de frequences d'observation. La valeur par defaut est un tableau de uns.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: matrice : estimation de covariance asymptotique.

== Description

#strong[uniflike]; retourne l'oppose de la log-vraisemblance pour des donnees de loi uniforme continue.


== Exemple

``````matlab
x = [2 5 3 4];
[nlogL, avar] = uniflike([1 6], x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.unifit>)[unifit];, #nlink(<statistics:2_probability_distributions.unifpdf>)[unifpdf];, #nlink(<statistics:2_probability_distributions.unifcdf>)[unifcdf];, #nlink(<statistics:2_probability_distributions.unifrnd>)[unifrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
