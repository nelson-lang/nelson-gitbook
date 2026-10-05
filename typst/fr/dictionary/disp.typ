#import "nelson_help.typ": *

= disp <dictionary:disp>

Affiche un dictionnaire.

== Syntaxe

- #raw("disp(d)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Description

#strong[disp(d)]; affiche un resume du dictionnaire #strong[d];, avec les types des cles et des valeurs, le nombre d'entrees et les paires cle-valeur visibles.

 Les dictionnaires non configures et les dictionnaires configures sans entree sont affiches avec des messages de resume dedies.


== Exemple

``````matlab
d = dictionary(["one", "two"], [1, 2]);
disp(d)
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [affichage classdef de dictionary],
)

// Auteur: Allan CORNET
