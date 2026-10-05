#import "../nelson_help.typ": *

= nbinfit <statistics:2_probability_distributions.nbinfit>

Estimation des parametres binomiaux negatifs

== Syntaxe

- #raw("phat = nbinfit(x)");
- #raw("[phat, pci] = nbinfit(x, alpha, censoring, freq, options)");

== Argument d'entrée

/ x: vecteur ou matrice reel non vide d'entiers finis positifs ou nuls : echecs observes.
/ alpha: scalaire dans l'intervalle \[0, 1\] : niveau de signification. La valeur par defaut est 0.05.
/ censoring: tableau contenant les valeurs 0 ou 1. La valeur par defaut est un tableau de zeros.
/ freq: tableau fini positif ou nul de frequences d'observation. La valeur par defaut est un tableau de uns.
/ options: structure creee par statset. MaxIter et TolX sont utilises.

== Argument de sortie

/ phat: tableau : estimations de r et p.
/ pci: tableau : intervalles de confiance de r et p.

== Description

#strong[nbinfit]; estime les parametres de la loi binomiale negative.


== Exemple

``````matlab
x = [0 1 2 4 6 9 12 15];
[phat, pci] = nbinfit(x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.nbinlike>)[nbinlike];, #nlink(<statistics:2_probability_distributions.nbinpdf>)[nbinpdf];, #nlink(<statistics:2_probability_distributions.nbincdf>)[nbincdf];, #nlink(<statistics:2_probability_distributions.nbinrnd>)[nbinrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
