#import "nelson_help.typ": *

= dlopen <dynamic_link:dlopen>

Charge une bibliothèque dynamique

== Syntaxe

- #raw("lib = dlopen(libraryname)");

== Argument d'entrée

/ libraryname: une chaîne : nom de la bibliothèque dynamique.

== Argument de sortie

/ lib: un handle dllib.

== Description

#strong[dlopen]; charge une bibliothèque dynamique.

 #strong[dlopen]; renvoie un handle #strong[dllib]; possédant une propriété #strong[Path];.

 Les méthodes #strong[get];, #strong[ismethod];, #strong[isprop];,#strong[disp];, #strong[delete];, #strong[isvalid];, #strong[used];, #strong[eq];,#strong[ne];, #strong[isequal];, #strong[horzcat];,#strong[vertcat]; sont surchargées pour le type #strong[dllib];.

 La bibliothèque est d'abord recherchée dans NELSON\_LIBRARY\_PATH puis dans PATH sous Windows ou LD\_LIBRARY\_PATH \/ DYLD\_LIBRARY\_PATH sur Linux\/MacOS.

 Le chemin NELSON\_LIBRARY\_PATH peut être modifié avec #strong[setenv];.


== Exemple

``````matlab
path_1 = modulepath('dynamic_link', 'builtin');
lib1 = dlopen(path_1)
isvalid(lib1)
dlclose(lib1)
isvalid(lib1)
clear lib1
``````


== Voir aussi

#nlink(<dynamic_link:dlclose>)[dlclose];, #nlink(<dynamic_link:dllibisloaded>)[dllibisloaded];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
