#import "nelson_help.typ": *

= mustBeUnderlyingType <validators:mustBeUnderlyingType>

Valide que la valeur a un type sous-jacent spécifié

== Syntaxe

- #raw("mustBeUnderlyingType(A, typename)");

== Argument d'entrée

/ A: valeur à valider.
/ typename: chaîne scalaire nommant le type sous-jacent requis.

== Argument de sortie

/ none: cette fonction de validation ne retourne aucune valeur.

== Description

#strong[mustBeUnderlyingType]; lève une erreur si le type sous-jacent de A (tel que retourné par underlyingType) n'est pas égal à typename. Cette fonction ne retourne pas de valeur.


== Exemple

``````matlab
mustBeUnderlyingType(int32(5), 'int32')
``````


== Voir aussi

#nlink(<validators:mustBeA>)[mustBeA];, #nlink(<types:underlyingType>)[underlyingType];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
