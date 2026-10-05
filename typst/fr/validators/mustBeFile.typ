#import "nelson_help.typ": *

= mustBeFile <validators:mustBeFile>

Vérifie que le chemin d'entrée correspond à un fichier.

== Syntaxe

- #raw("mustBeFile(var)");
- #raw("mustBeFile(var, argPosition)");
- #raw("C++: void mustBeFile(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : un tableau scalaire de chaînes ou un vecteur ligne de caractères.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeFile]; vérifie que le chemin d'entrée correspond à un fichier ou renvoie une erreur.


== Exemple

``````matlab
mustBeFile(tempdir())
 mustBeFile([nelsonroot(), '/etc/startup.m'])
``````


== Voir aussi

#nlink(<files_folders_functions:isfile>)[isfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
