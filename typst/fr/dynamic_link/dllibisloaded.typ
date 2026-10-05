#import "nelson_help.typ": *

= dllibisloaded <dynamic_link:dllibisloaded>

Vérifie si une bibliothèque partagée est chargée

== Syntaxe

- #raw("tf = dllibisloaded(libraryname)");
- #raw("[tf, lib] = dllibisloaded(libraryname)");

== Argument d'entrée

/ libraryname: une chaîne : nom de la bibliothèque dynamique.

== Argument de sortie

/ tf: un booléen : true si la bibliothèque est déjà chargée.
/ lib: un handle dllib : bibliothèque déjà chargée.

== Description

#strong[dllibisloaded]; indique si une bibliothèque partagée est déjà chargée.


== Exemple

``````matlab

		path_1 = modulepath('dynamic_link', 'builtin');
r = dllibisloaded(path_1)
lib1 = dlopen(path_1);
[r, lib2] = dllibisloaded(path_1)
isequal(lib1, lib2)
		
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
