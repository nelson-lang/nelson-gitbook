# QObject_iswindowtype

Returns true if the QObject is a window.

## Syntax

- R = QObject_iswindowtype(h)

## Input argument

- h - an QObject handle.

## Output argument

- R - a logical.

## Description

<p>Returns true if the QObject is a window; otherwise returns false.</p>

## Example

```matlab
h = errordlg()
r = QObject_iswindowtype(h)
```

## See also

[QObject_set (set)](../qml_engine/QObject_set.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
