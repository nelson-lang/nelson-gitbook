# colstyle

Parse color and style from string.

## Syntax

- [linespec, colorspec, markerspec, msg] = colstyle (str)
- [linespec, colorspec, markerspec, msg] = colstyle (str, 'plot')

## Input argument

- str - a row vector of character or scalar string: line specification.
- 'plot' - linespec returns 'none' and not '' with this option.

## Output argument

- linespec - a string: line type.
- colorspec - a string: color part.
- markerspec - a string: marker part.
- msg - a string: contain the error message string.

## Description

<p>
            <b>colstyle</b> parses color and style from string.</p>

## Example

```matlab
[l, c, m, msg] = colstyle('r:x')
[l, c, m, msg] = colstyle('*')
[l, c, m, msg] = colstyle('*', 'plot')
```

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
