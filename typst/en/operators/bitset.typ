#import "nelson_help.typ": *

= bitset <operators:bitset>

Set bit at a specified position.

== Syntax

- #raw("r = bitset(A, pos)");
- #raw("r = bitset(A, pos, val)");

== Input argument

/ A: an integer array.
/ pos: the bit position (1 is the least significant bit).
/ val: the bit value, #strong[0]; or #strong[1]; (default #strong[1];).

== Output argument

/ r: #strong[A]; with the bit at #strong[pos]; set to #strong[val];.

== Description

#strong[r \= bitset(A, pos)]; sets the bit at position #strong[pos]; of #strong[A]; to #strong[1];.

 #strong[r \= bitset(A, pos, val)]; sets that bit to #strong[val];.


== Example

``````matlab
bitset(uint8(0), 3)
``````


== See also

#nlink(<operators:bitget>)[bitget];, #nlink(<operators:bitand>)[bitand];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
