#import "../nelson_help.typ": *

= strrep <string:3_find_replace.strrep>

Remplace des sous-chaînes dans une chaîne.

== Syntaxe

- #raw("res = strrep(str, old, new)");

== Argument d'entrée

/ str: une chaîne, un tableau de chaînes ou une cellule de chaînes.
/ old: une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.
/ new: une chaîne, un tableau de chaînes ou une cellule de chaînes de remplacement.

== Argument de sortie

/ res: une chaîne, un tableau de chaînes ou une cellule de chaînes.

== Description

#strong[replace]; remplace des sous-chaînes dans une chaîne.

 #strong[replace]; et#strong[strrep]; remplacent des sous-chaînes, mais#strong[replace]; est recommandé.


== Exemple

``````matlab
r = strrep('This is a string.', 'is', 'is not')
r = strrep({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
r = strrep("This is a string.", "is", 'is not')
``````


== Voir aussi

#nlink(<string:3_find_replace.replace>)[replace];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
