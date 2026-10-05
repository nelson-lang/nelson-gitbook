#import "../nelson_help.typ": *

= replace <string:3_find_replace.replace>

Remplace des sous-chaînes dans une chaîne.

== Syntaxe

- #raw("res = replace(str, old, new)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ old: une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.
/ new: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Argument de sortie

/ res: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Description

#strong[replace]; remplace des sous-chaînes dans une chaîne.

 #strong[replace]; et #strong[strrep]; remplacent des chaînes, mais#strong[replace]; est recommandé.


== Exemple

``````matlab
r = replace('This is a string.', 'is', 'is not')
r = replace({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
``````


== Voir aussi

#nlink(<string:3_find_replace.strrep>)[strrep];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
