#import "nelson_help.typ": *

= mustBeFolder <validators:mustBeFolder>

Vérifie que le chemin d'entrée correspond à un dossier.

== Syntaxe

- #raw("mustBeFolder(var)");
- #raw("mustBeFolder(var, argPosition)");
- #raw("C++: void mustBeFolder(const ArrayOfVector& args, int argPosition)");

== Argument d'entrée

/ var: une variable : un tableau scalaire de chaînes ou un vecteur ligne de caractères.
/ argPosition: un entier positif : position de l'argument d'entrée.

== Description

#strong[mustBeFolder]; vérifie que le chemin d'entrée correspond à un dossier ou renvoie une erreur.


== Exemple

``````matlab
mustBeFolder(tempdir())
mustBeFolder('hello_nelson')
``````


== Voir aussi

#nlink(<files_folders_functions:isdir>)[isdir];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
