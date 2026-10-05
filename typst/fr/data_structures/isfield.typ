#import "nelson_help.typ": *

= isfield <data_structures:isfield>

Vérifie si un nom de champ existe dans une structure.

== Syntaxe

- #raw("res = isfield(S, name)");
- #raw("res = isfield(S, C)");

== Argument d'entrée

/ S: une structure
/ name: une chaîne
/ C: un tableau cellulaire

== Argument de sortie

/ res: un logique

== Description

#strong[isfield(S, name)]; renvoie vrai si#strong[name]; est un nom de champ de #strong[S];.


== Exemples

``````matlab
S.Nelson = 1;
isfield(S, 'Nel')
isfield(S, 'Nelson')
``````

``````matlab
S.nel = 1;
S.son = 2;
isfield(S,{ 1, 'nel'; 2, 'son'})
``````


== Voir aussi

#nlink(<data_structures:fieldnames>)[fieldnames];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
