#import "../nelson_help.typ": *

= unidrnd <statistics:2_probability_distributions.unidrnd>

Nombres aleatoires uniformes discrets

== Syntaxe

- #raw("r = unidrnd(n)");
- #raw("r = unidrnd(n, sz)");
- #raw("r = unidrnd(n, sz1, ..., szN)");

== Argument d'entrée

/ n: scalaire entier positif ou tableau : valeur maximale.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : entiers aleatoires.

== Description

#strong[unidrnd]; genere des entiers aleatoires uniformes entre 1 et #strong[n];.


== Exemple

``````matlab
rng(0);
r = unidrnd(5, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
