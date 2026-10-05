#import "nelson_help.typ": *

= createGUID <os_functions:createGUID>

Crée un GUID.

== Syntaxe

- #raw("s = createGUID()");
- #raw("c = createGUID(numbers_of_GUID)");

== Argument d'entrée

/ numbers\_of\_GUID: un entier : nombre de GUID à créer.

== Argument de sortie

/ s: une chaîne
/ c: une cellule de chaînes.

== Description

#strong[createGUID]; crée un Globally Unique IDentifier (GUID), un entier 128 bits unique utilisé pour les CLSID et les identifiants d'interface.


== Exemple

``````matlab
createGUID()
createGUID(10)
``````


== Voir aussi

#nlink(<files_folders_functions:tempname>)[tempname];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
