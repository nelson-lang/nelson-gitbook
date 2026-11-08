#import "nelson_help.typ": *

= bitset <operators:bitset>

Positionne un bit à une position donnée.

== Syntaxe

- #raw("r = bitset(A, pos)");
- #raw("r = bitset(A, pos, val)");

== Argument d'entrée

/ A: un tableau d'entiers.
/ pos: la position du bit (1 est le bit de poids faible).
/ val: la valeur du bit, #strong[0]; ou #strong[1]; (par défaut #strong[1];).

== Argument de sortie

/ r: #strong[A]; avec le bit en position #strong[pos]; fixé à #strong[val];.

== Description

#strong[r \= bitset(A, pos)]; met à #strong[1]; le bit en position #strong[pos]; de #strong[A];.

 #strong[r \= bitset(A, pos, val)]; met ce bit à #strong[val];.


== Exemple

``````matlab
bitset(uint8(0), 3)
``````


== Voir aussi

#nlink(<operators:bitget>)[bitget];, #nlink(<operators:bitand>)[bitand];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
