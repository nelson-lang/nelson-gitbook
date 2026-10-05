#import "nelson_help.typ": *

= username <os_functions:username>

obtenir le nom d'utilisateur courant.

== Syntaxe

- #raw("s = username()");

== Argument de sortie

/ s: un tableau de caractères : nom d'utilisateur.

== Description

#strong[username]; renvoie le nom d'utilisateur actuellement utilisé.


== Exemple

``````matlab
username()
``````


== Voir aussi

#nlink(<os_functions:hostname>)[hostname];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
