#import "nelson_help.typ": *

= getavailablelanguages <localization:getavailablelanguages>

Renvoie les langues disponibles dans Nelson.

== Syntaxe

- #raw("ce = getavailablelanguages()");

== Argument de sortie

/ ce: une cellule de chaînes : langues prises en charge.

== Description

#strong[getavailablelanguages]; renvoie la liste des langues actuellement prises en charge dans Nelson.


== Exemple

``````matlab
getavailablelanguages()
``````


== Voir aussi

#nlink(<localization:setlanguage>)[setlanguage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
