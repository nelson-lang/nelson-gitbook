#import "nelson_help.typ": *

= nelson.mixin.util.PropertyGroup <types:nelson.mixin.util.PropertyGroup>

Un groupe titré de propriétés pour l'affichage personnalisé d'objets.

== Syntaxe

- #raw("g = nelson.mixin.util.PropertyGroup(propertyList)");
- #raw("g = nelson.mixin.util.PropertyGroup(propertyList, title)");

== Argument d'entrée

/ propertyList: tableau de cellules de noms de propriétés.
/ title: titre optionnel du groupe (char ou string).

== Argument de sortie

/ g: un nelson.mixin.util.PropertyGroup scalaire.

== Description

#strong[nelson.mixin.util.PropertyGroup]; regroupe des propriétés d'objet pour l'affichage. Une méthode #strong[getPropertyGroups]; d'une sous-classe #strong[nelson.mixin.CustomDisplay]; renvoie un tableau de groupes de propriétés, chacun affiché avec son titre suivi de ses propriétés.

 Propriétés : #strong[Title];, #strong[PropertyList]; et #strong[NumProperties]; (en lecture seule).


== Exemple

Créer un groupe de propriétés.

``````matlab
g = nelson.mixin.util.PropertyGroup({'X', 'Y'}, 'Coordinates');
g.Title
g.NumProperties
``````


== Voir aussi

#nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
