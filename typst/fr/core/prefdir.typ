#import "nelson_help.typ": *

= prefdir <core:prefdir>

Répertoire des préférences utilisateur.

== Syntaxe

- #raw("pref_path = prefdir");

== Argument de sortie

/ pref\_path: a string: the preferences directory

== Description

Retourne le répertoire où sont stockées les préférences spécifiques à l'utilisateur pour Nelson.


== Exemple

an example

``````matlab
cd(prefdir)
``````


== Voir aussi

#nlink(<files_folders_functions:cd>)[cd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
