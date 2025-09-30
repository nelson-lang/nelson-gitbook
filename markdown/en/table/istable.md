# istable

Determine if input is table.

## Syntax

- tf = istable(A)

## Input argument

- A - Input array.

## Output argument

- tf - a logical: true if it is a table.

## Description

<p>
            <b>tf = istable(A)</b> returns <b>true</b> if <b>A</b> is a table, and <b>false</b> if it is not.</p>

## Example

```matlab
T = table();
istable(T)
M = magic(6);
istable(M)
```

## See also

[isa](../types/isa.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
