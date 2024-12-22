# QObject_used

Returns list of current used QObject handle.

## Syntax

- r = QObject_used()

## Output argument

- h - a vector of QObject handle.

## Description

  <p>Returns list of current used QObject handle.</p>

## See also

[QObject_set (set)](QObject_set.md), [QObject_get (get)](QObject_get.md).

## Example

```matlab
h1 = errordlg()
h2 = errordlg()
h3 = errordlg()
used = QObject_used()delete(used)
used = QObject_used()
delete(used)
used = QObject_used()
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
