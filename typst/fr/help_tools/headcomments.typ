#import "nelson_help.typ": *

= headcomments <help_tools:headcomments>

Affiche les commentaires d'en-tête d'une fonction Nelson.

== Syntaxe

- #raw("headcomments(function_name)");
- #raw("ce = headcomments(function_name)");

== Argument d'entrée

/ function\_name: une chaîne : nom de la fonction ou nom de fichier .m.

== Argument de sortie

/ ce: une cellule de chaînes

== Description

#strong[head\_comments]; affiche les commentaires d'en-tête d'une fonction.

 Les commentaires sont lus depuis le fichier .m associé.

 Les fonctions prédéfinies de Nelson n'ont pas de commentaires d'en-tête.


== Exemple

``````matlab
comments = headcomments('cellstr'); md = markdown(comments);inserthtml(md)
``````


#align(center)[#image("headcomments.png")]

== Voir aussi

#nlink(<help_tools:doc>)[doc];, #nlink(<help_tools:markdown>)[markdown];, #nlink(<gui:inserthtml>)[inserthtml];, #nlink(<functions_manager:which>)[which];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
