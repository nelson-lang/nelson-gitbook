#import "nelson_help.typ": *

= hostname <os_functions:hostname>

obtenir le nom d'hôte de cet ordinateur.

== Syntaxe

- #raw("s = hostname()");

== Argument de sortie

/ s: un tableau de caractères : nom d'hôte.

== Description

#strong[hostname]; renvoie le nom d'hôte de cet ordinateur.


== Exemple

``````matlab
hostname()
``````


== Voir aussi

#nlink(<os_functions:username>)[username];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
