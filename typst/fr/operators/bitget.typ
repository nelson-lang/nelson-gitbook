#import "nelson_help.typ": *

= bitget <operators:bitget>

Retourne des bits selectionnes.

== Syntaxe

- #raw("C = bitget(A, bit)");
- #raw("C = bitget(A, bit, assumedtype)");

== Argument d'entrée

/ A: Tableau entier, ou tableau double avec valeurs entieres positives.
/ bit: Position de bit entiere positive.
/ assumedtype: Nom de type entier utilise pour une entree double.

== Argument de sortie

/ C: Tableau contenant des valeurs zero ou un.

== Description

#strong[C \= bitget(A, bit)]; retourne la valeur du bit selectionne pour chaque element de #strong[A];.


== Exemple

``````matlab
R = bitget(uint8([1 2 3]), 1)
``````


== Voir aussi

#nlink(<operators:bitand>)[bitand];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
