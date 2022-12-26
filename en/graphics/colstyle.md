# colstyle

Parse color and style from string.

## Syntax

- [linespec, colorspec, markerspec, msg] = colstyle (str)

## Input argument

- str - a row vector of character or scalar string: line specification.

## Output argument

- linespec - a string: line type.
- colorspec - a string: color part.
- markerspec - a string: marker part.
- msg - a string: contain the error message string.

## Description

  <p><b>colstyle</b> parses color and style from string.</p>

## Example

```matlab
[l, c, m, msg] = colstyle('r:x')
```

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
