#import "nelson_help.typ": *

= ls <files_folders_functions:ls>

Liste le contenu d'un répertoire.

== Syntaxe

- #raw("ls");
- #raw("ls(name)");
- #raw("res = ls()");
- #raw("res = ls(options)");

== Argument d'entrée

/ name: a string: nom de fichier ou de répertoire.
/ options: varie selon le système.

== Argument de sortie

/ res: Sur Windows, res est un tableau m-by-n de caractères. Sur Unix, c'est un vecteur de noms séparés par des tabulations et espaces.

== Description

#strong[ls]; appelle la commande de liste de répertoire native du système d'exploitation - les options disponibles varient selon le système.


== Exemple

``````matlab
res = ls(nelsonroot())
if ~ispc()
  res = ls(nelsonroot(), '-l')
end
``````


== Voir aussi

#nlink(<files_folders_functions:dir>)[dir];, #nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
