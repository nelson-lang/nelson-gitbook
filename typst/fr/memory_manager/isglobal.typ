#import "nelson_help.typ": *

= isglobal <memory_manager:isglobal>

Vérifie si une variable est globale.

== Syntaxe

- #raw("state = isglobal(variable_name)");

== Argument d'entrée

/ variable\_name: une chaîne : nom de la variable.

== Argument de sortie

/ state: un booléen : vrai si la variable est globale.

== Description

#strong[isglobal]; renvoie vrai si#strong[variable\_name]; a été déclarée comme variable globale, et faux sinon.


== Exemple

``````matlab
y = 3;
isglobal y
global b
b = 3
isglobal b
clear global b
isglobal b
``````


== Voir aussi

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:global>)[global];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
