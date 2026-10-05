#import "../nelson_help.typ": *

= nbinrnd <statistics:2_probability_distributions.nbinrnd>

Nombres aleatoires binomiaux negatifs

== Syntaxe

- #raw("rout = nbinrnd(r, p)");
- #raw("rout = nbinrnd(r, p, sz)");
- #raw("rout = nbinrnd(r, p, sz1, ..., szN)");

== Argument d'entrée

/ r: scalaire positif ou tableau : nombre de succes.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ rout: tableau : valeurs aleatoires.

== Description

#strong[nbinrnd]; genere des valeurs aleatoires de loi binomiale negative.


== Exemple

``````matlab
rng(0);
rout = nbinrnd(3, 0.4, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
