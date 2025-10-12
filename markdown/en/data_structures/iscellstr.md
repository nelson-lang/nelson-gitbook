# iscellstr

Returns if a variable is a cell of strings.

## Syntax

- true_or_false = iscellstr(A)

## Input argument

- A - a variable

## Output argument

- true_or_false - a logical

## Description

<p>
            iscellstr(A) returns true if A is a cell of strings or an empty cell).</p>

## Examples

```matlab
iscellstr('Nelson')
```

```matlab
iscellstr({'Nelson'})
```

```matlab
iscellstr({})
```

## See also

[iscell](../types/iscell.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
