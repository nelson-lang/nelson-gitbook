#import "nelson_help.typ": *

= orderfields <data_structures:orderfields>

Reorganize the fields of a structured array.

== Syntax

- #raw("S = orderfields(S1)");
- #raw("S = orderfields(S1, S2)");
- #raw("S = orderfields(S1, C)");
- #raw("S = orderfields(S1, P)");
- #raw("[S, Pout] = orderfields(...)");

== Input argument

/ S1: structure array: Input structure.
/ S2: structure array: Field order by structure.
/ C: cell array of character vectors or string array: Field order by name
/ P: numeric vector: Field order by number.

== Output argument

/ S: structure array: Reordered structure.
/ Pout: numeric vector: Output field order.

== Description

#strong[S \= orderfields(S1)]; sorts the fields in#strong[S1]; alphabetically by their names, considering uppercase letters before lowercase ones, and digits and underscores are also accounted for.

 #strong[S \= orderfields(S1,S2)]; returns a copy of #strong[S1]; with its fields rearranged to match the order of fields in#strong[S2];.Both #strong[S1]; and #strong[S2]; must share the same field names.

 #strong[S \= orderfields(S1, C)]; matches the order specified in the input array#strong[C];. Each field name from #strong[S1]; must appear once in #strong[C];.

 #strong[S \= orderfields(S1, P)]; reorders fields based on the permutation vector#strong[P];.#strong[P]; contains integers from 1 to n, where n is the number of fields in#strong[S1];. This syntax is useful for maintaining consistent ordering across multiple structure arrays.

 #strong[\[S, Pout\] \= orderfields(...)]; also returns a permutation vector#strong[Pout];, indicating the changes in field order.#strong[Pout]; consists of integers from 1 to n, reflecting the rearranged field positions. This syntax is compatible with any of the previously mentioned arguments.

 #strong[orderfields]; function exclusively arranges the top-level fields and doesn't operate recursively.


== Example

``````matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)

``````


== See also

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];, #nlink(<data_structures:isfield>)[isfield];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
