#import "nelson_help.typ": *

= evalin <core:evalin>

Évalue une expression dans un espace de travail spécifié.

== Syntaxe

- #raw("evalin(scope, str)");
- #raw("[r1, ... rn] = evalin(scope, str)");

== Argument d'entrée

/ workspace: chaîne : 'base' ou 'caller'
/ expr: chaîne : expression à évaluer

== Argument de sortie

/ results: résultats : variables de sortie

== Description

Évalue une expression dans un espace de travail donné (par exemple, l'espace de travail 'base' ou 'caller').


== Exemple

``````matlab
evalin('base', 'B=4')
``````


== Voir aussi

#nlink(<core:eval>)[eval];, #nlink(<memory_manager:acquirevar>)[acquirevar];, #nlink(<core:execstr>)[execstr];, #nlink(<core:evalc>)[evalc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
