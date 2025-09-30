# namedargs2cell

Converts a struct containing name-value pairs to a cell.

## Syntax

- ce = namedargs2cell(st)

## Input argument

- st - a scalar structure.

## Output argument

- ce - a cell.

## Description

<p>
            <b>ce = namedargs2cell(st)</b> returns an cell containing name-value pairs.</p>

## Example

```matlab
S = struct();
S.CharacterEncoding = 'auto';
S.Timeout = 5;
S.Username = "";
S.logical = false;
R = namedargs2cell(S)
```

## See also

[struct2cell](../data_structures/struct2cell.md), [struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
