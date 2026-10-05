#import "../nelson_help.typ": *

= trnd <statistics:2_probability_distributions.trnd>

Nombres aleatoires Student t

== Syntaxe

- #raw("r = trnd(nu)");
- #raw("r = trnd(nu, sz)");
- #raw("r = trnd(nu, sz1, ..., szN)");

== Argument d'entrée

/ nu: scalaire positif ou tableau : degres de liberte.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[trnd]; genere des valeurs aleatoires de loi Student t.


== Exemple

``````matlab
rng(0);
r = trnd(5, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
