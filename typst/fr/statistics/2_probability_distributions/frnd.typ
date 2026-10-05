#import "../nelson_help.typ": *

= frnd <statistics:2_probability_distributions.frnd>

Nombres aleatoires F

== Syntaxe

- #raw("r = frnd(v1, v2)");
- #raw("r = frnd(v1, v2, sz)");
- #raw("r = frnd(v1, v2, sz1, ..., szN)");

== Argument d'entrée

/ v1: scalaire positif ou tableau : degres de liberte du numerateur.
/ v2: scalaire positif ou tableau : degres de liberte du denominateur.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[frnd]; genere des valeurs aleatoires de loi F.


== Exemple

``````matlab
rng(0);
r = frnd(5, 7, 2, 3);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
