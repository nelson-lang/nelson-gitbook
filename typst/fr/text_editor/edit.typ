#import "nelson_help.typ": *

= edit <text_editor:edit>

éditeur de fonctions.

== Syntaxe

- #raw("edit()");
- #raw("edit filename");
- #raw("edit function_name");

== Argument d'entrée

/ filename: une chaîne : nom de fichier à ouvrir.
/ function\_name: une chaîne : nom de la fonction

== Description

#strong[edit]; ouvre un nouveau fichier nommé untitled.m dans l'éditeur intégré de Nelson.

 Si #strong[function\_name]; est le nom d'une fonction Nelson définie,#strong[edit(function\_name)]; tente d'ouvrir le fichier associé function\_name.m.

 #strong[edit(dirname)]; ouvre tous les fichiers .m disponibles dans #strong[dirname];.


== Exemple

``````matlab
edit('edit')
``````


== Voir aussi

#nlink(<interpreter:smartindent>)[smartindent];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.5.0], [edit(dirname) added],
)

// Auteur: Allan CORNET
