#import "nelson_help.typ": *

= dllibinfo <dynamic_link:dllibinfo>

Renvoie la liste des symboles disponibles dans une bibliothèque partagée

== Syntaxe

- #raw("c = dllibinfo(lib)");

== Argument d'entrée

/ lib: a dllib handle: library already loaded.

== Argument de sortie

/ c: un tableau de cellules de chaînes.

== Description

#strong[dllibinfo]; renvoie la liste des symboles disponibles dans une bibliothèque partagée.


== Exemple

``````matlab
lib = dlopen(modulepath('dynamic_link', 'builtin'))
c = dllibinfo(lib)
``````


== Voir aussi

#nlink(<dynamic_link:dlopen>)[dlopen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
