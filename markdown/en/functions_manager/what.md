# what

Get Nelson builtin and macro list.

## Syntax

- list_builtin = what()
- [list_builtin, list_macro] = what()

## Output argument

- list_builtin - a cell of strings
- list_macro - a cell of strings

## Description

  <p><b>what</b> returns the list of all builtin and macro available in current Nelson's session.</p>

## Example

```matlab
l = what()
[l, m] = what()
```

## See also

[which](which.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
