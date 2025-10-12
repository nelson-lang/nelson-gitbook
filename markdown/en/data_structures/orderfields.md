# orderfields

Reorganize the fields of a structured array.

## Syntax

- S = orderfields(S1)
- S = orderfields(S1, S2)
- S = orderfields(S1, C)
- S = orderfields(S1, P)
- [S, Pout] = orderfields(...)

## Input argument

- S1 - structure array: Input structure.
- S2 - structure array: Field order by structure.
- C - cell array of character vectors or string array: Field order by name
- P - numeric vector: Field order by number.

## Output argument

- S - structure array: Reordered structure.
- Pout - numeric vector: Output field order.

## Description

<p>
            S = orderfields(S1) sorts the fields in S1 alphabetically by their names, considering uppercase letters before lowercase ones, and digits and underscores are also accounted for.</p>

<p>
                S = orderfields(S1,S2) returns a copy of S1 with its fields rearranged to match the order of fields in S2.Both S1 and S2 must share the same field names.</p>

<p>
                    S = orderfields(S1, C) matches the order specified in the input array C. Each field name from S1 must appear once in C.</p>

<p>
                        S = orderfields(S1, P) reorders fields based on the permutation vector P. P contains integers from 1 to n, where n is the number of fields in S1. This syntax is useful for maintaining consistent ordering across multiple structure arrays.</p>

<p>
                            [S, Pout] = orderfields(...) also returns a permutation vector Pout, indicating the changes in field order. Pout consists of integers from 1 to n, reflecting the rearranged field positions. This syntax is compatible with any of the previously mentioned arguments.</p>

<p>
                                orderfields function exclusively arranges the top-level fields and doesn't operate recursively.</p>

## Example

```matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)

```

## See also

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md), [isfield](../data_structures/isfield.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
