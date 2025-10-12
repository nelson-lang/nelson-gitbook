# cell

Create cell array of empty matrices.

## Syntax

- C = cell()
- C = cell(m)
- C = cell(m, n)
- C = cell(m, n, ... , p)
- C = cell(sz)
- C = cell(A)

## Input argument

- m, n, ... , p - dimensions of the cell to create.
- sz - a vector of integer values (dimensions of the cell to create).
- A - a string array.

## Output argument

- C - a cell

## Description

<p>
            cell returns a cell array of empty matrices.</p>

<p>
                cell() is equivalent to cell(0)
            </p>

<p>
                cell(A) with A a string array converts to cell.</p>

## Examples

```matlab
A = eye(2, 4);
sz = size(A)
C = cell(sz)
```

```matlab
A = ["Nel", "son"; "open", "source"];
C = cell(A)
```

## See also

[struct](../data_structures/struct.md), [iscell](../types/iscell.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
