#import "nelson_help.typ": *

= iskeyword <interpreter:iskeyword>

Renvoie tous les mots-clés de Nelson.

== Syntaxe

- #raw("state = iskeyword(name)");
- #raw("ce = iskeyword()");

== Argument d'entrée

/ name: une chaîne.

== Argument de sortie

/ state: un logique : true si c'est un mot-clé Nelson.
/ ce: une cellule de chaînes : liste des mots-clés de Nelson.

== Description

#strong[iskeyword]; renvoie la liste de tous les mots-clés de Nelson.


== Exemple

``````matlab
iskeyword('for')
ce = iskeyword()
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
