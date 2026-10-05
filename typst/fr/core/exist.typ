#import "nelson_help.typ": *

= exist <core:exist>

Verifie l'existence d'une variable, fonction ou fichier.

== Syntaxe

- #raw("res = exist(name)");
- #raw("res = exist(name, category)");

== Argument d'entrée

/ name: chaine : nom de l'entite a tester
/ type: chaine : type recherche (optionnel) : 'var', 'builtin', 'file', 'dir' ou 'class'

== Argument de sortie

/ code: un entier : code indiquant le type d'existence

== Description

Verifie si une entite (variable, fonction, fichier, dossier, classe, etc.) existe et retourne un code indiquant son type.

 #strong[8]; indique une classe.


== Exemple

``````matlab
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')

``````


== Voir aussi

#nlink(<functions_manager:isbuiltin>)[isbuiltin];, #nlink(<functions_manager:ismacro>)[ismacro];, #nlink(<files_folders_functions:isfile>)[isfile];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<memory_manager:isvar>)[isvar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
