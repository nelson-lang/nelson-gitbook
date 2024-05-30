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

  <p><b>S = orderfields(S1)</b> sorts the fields in <b>S1</b> alphabetically by their names, considering uppercase letters before lowercase ones, and digits and underscores are also accounted for.</p>
  <p><b>S = orderfields(S1,S2)</b> returns a copy of <b>S1</b> with its fields rearranged to match the order of fields in <b>S2</b>.Both <b>S1</b> and <b>S2</b> must share the same field names.</p>
  <p><b>S = orderfields(S1, C)</b> matches the order specified in the input array <b>C</b>. Each field name from <b>S1</b> must appear once in <b>C</b>.</p>
  <p><b>S = orderfields(S1, P)</b> reorders fields based on the permutation vector <b>P</b>. <b>P</b> contains integers from 1 to n, where n is the number of fields in <b>S1</b>. This syntax is useful for maintaining consistent ordering across multiple structure arrays.</p>
  <p><b>[S, Pout] = orderfields(...)</b> also returns a permutation vector <b>Pout</b>, indicating the changes in field order. <b>Pout</b> consists of integers from 1 to n, reflecting the rearranged field positions. This syntax is compatible with any of the previously mentioned arguments.</p>
  <p><b>orderfields</b> function exclusively arranges the top-level fields and doesn't operate recursively.</p>

## Example

```matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)
```

## See also

[struct](struct.md), [fieldnames](fieldnames.md), [isfield](isfield.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
