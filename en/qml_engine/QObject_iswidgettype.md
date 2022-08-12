# QObject_iswidgettype

Returns true if the QObject is a widget.

## Syntax

- R = QObject_iswidgettype(h)

## Input argument

- h - an QObject handle.

## Output argument

- R - a logical.

## Description

  <p>Returns true if the QObject is a widget; otherwise returns false.</p>

## See also

[QObject_set (set)](QObject_set.html).

## Example

```matlab
h = errordlg()
r = QObject_iswidgettype(h)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
