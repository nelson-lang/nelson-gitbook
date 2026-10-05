#import "nelson_help.typ": *

= vectorize <string:vectorize>

Insere des operateurs element par element dans une expression texte.

== Syntaxe

- #raw("s = vectorize(expr)");

== Argument d'entrée

/ expr: Expression sous forme de texte.

== Argument de sortie

/ s: Expression vectorisee sous forme de texte.

== Description

#strong[vectorize]; prefixe les operateurs puissance, multiplication et division par des points lorsque necessaire.


== Exemple

``````matlab
s = vectorize('x^2 + y*z')
``````


== Voir aussi

#nlink(<function_handle:str2func>)[str2func];, #nlink(<function_handle:func2str>)[func2str];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
