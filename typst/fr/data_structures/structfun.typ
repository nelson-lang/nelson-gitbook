#import "nelson_help.typ": *

= structfun <data_structures:structfun>

Applique une fonction a chaque champ d'une structure scalaire.

== Syntaxe

- #raw("B = structfun(fun, S)");
- #raw("B = structfun(fun, S, 'UniformOutput', tf)");

== Argument d'entrée

/ fun: handle de fonction applique a chaque valeur de champ.
/ S: structure scalaire.
/ tf: option 'UniformOutput' : true (defaut) ou false.

== Argument de sortie

/ B: vecteur colonne (sortie uniforme) ou structure (sortie non uniforme).

== Description

#strong[structfun(fun, S)]; applique #strong[fun]; a chaque champ de la structure scalaire #strong[S]; et retourne les resultats sous forme de vecteur colonne.

 Avec #strong['UniformOutput']; a #strong[false];, les resultats sont retournes dans une structure ayant les memes champs que #strong[S];.


== Exemple

``````matlab
s.a = 1; s.b = 2; s.c = 3;
structfun(@(x) x * 2, s)
``````


== Voir aussi

#nlink(<data_structures:cellfun>)[cellfun];, #nlink(<data_structures:arrayfun>)[arrayfun];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
