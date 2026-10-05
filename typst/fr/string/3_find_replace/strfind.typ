#import "../nelson_help.typ": *

= strfind <string:3_find_replace.strfind>

Trouve une chaîne dans une autre.

== Syntaxe

- #raw("occ = strfind(str, pattern)");
- #raw("occ = strfind(str, pattern,'ForceCellOutput', ouput)");

== Argument d'entrée

/ str: une chaîne ou une cellule de chaînes.
/ pattern: une chaîne à rechercher.
/ output: un booléen.

== Argument de sortie

/ occ: une cellule ou une matrice de valeurs entières : positions des occurrences.

== Description

#strong[strfind]; trouve une chaîne dans une autre.


== Exemple

``````matlab

str = 'To make a mountain out of a molehill';
k = strfind (str, 'in')
k= strfind(str, ' ')
k = strfind ({'abababada', 'beabebe', 'ab'}, 'aba')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strfind(A, 'o')

str = 'No pain no gain.';
k = strfind(str,'in','ForceCellOutput',true)
k = strfind(str,'in','ForceCellOutput',false)

``````


== Voir aussi

#nlink(<string:8_compare_text.strcmp>)[strcmp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
