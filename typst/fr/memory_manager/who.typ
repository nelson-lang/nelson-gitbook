#import "nelson_help.typ": *

= who <memory_manager:who>

Liste les variables en mémoire ou dans un fichier .nh5 ou .mat.

== Syntaxe

- #raw("who");
- #raw("s = who()");
- #raw("who(scope)");
- #raw("s = who(scope)");
- #raw("who('-file', filename)");
- #raw("s = who('-file', filename)");
- #raw("who(... , var1, ..., varN)");
- #raw("s = who(... , var1, ..., varN)");

== Argument d'entrée

/ scope: une chaîne : 'global', 'base', 'caller', 'local' ou '-file'.
/ filename: chaîne : nom d'un fichier existant .nh5 ou .mat.
/ var1, ..., varN: chaîne : nom de la variable.

== Argument de sortie

/ s: un tableau de chaînes : liste des noms de variables.

== Description

#strong[who]; affiche les noms des variables courantes.


== Exemple

``````matlab
clear
who
A = 3
b= 3
who
s = who()
``````


== Voir aussi

#nlink(<functions_manager:what>)[what];, #nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:whos>)[whos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
