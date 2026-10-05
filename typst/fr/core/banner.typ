#import "nelson_help.typ": *

= banner <core:banner>

Affiche la bannière d'accueil de Nelson.

== Syntaxe

- #raw("banner");

== Description

Affiche la bannière ou le message d'accueil utilisé par l'environnement Nelson.


== Exemple

``````matlab
clc();banner
``````


== Voir aussi

#nlink(<console:clc>)[clc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
