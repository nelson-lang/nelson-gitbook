#import "../nelson_help.typ": *

= chi2rnd <statistics:2_probability_distributions.chi2rnd>

Nombres aleatoires khi deux

== Syntaxe

- #raw("r = chi2rnd(nu)");
- #raw("r = chi2rnd(nu, sz)");
- #raw("r = chi2rnd(nu, sz1, ..., szN)");

== Argument d'entrée

/ nu: scalaire positif ou tableau : degres de liberte.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[chi2rnd]; genere des valeurs aleatoires de loi du khi deux.


== Exemple

``````matlab
rng(0);
r = chi2rnd(4, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
