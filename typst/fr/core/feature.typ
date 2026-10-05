#import "nelson_help.typ": *

= feature <core:feature>

Interroge les fonctionnalités disponibles.

== Syntaxe

- #raw("ret = feature(name)");
- #raw("ret = feature(name, newValue)");

== Argument d'entrée

/ name: chaîne : nom de la fonctionnalité
/ newValue: une variable (optionnelle)

== Argument de sortie

/ ret: résultat : valeur renvoyée

== Description

Retourne des informations sur les fonctionnalités ou options disponibles dans l'environnement Nelson.


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [version initiale],
)

// Auteur: Allan CORNET
