# QObject_findchildren

Returns all children of this object with the given name.

## Syntax

- hr = QObject_findchildren(h, objectName, recursive)

## Input argument

- h - an QObject handle.
- objectName - a string.
- recursive - a logical: true (The search is performed recursively).

## Output argument

- hr - a vector of QObject handle.

## Description

<p>Returns all children of this object with the given name.</p>

## Example

```matlab
h1 = errordlg()
h2 = errordlg()
hr = QObject_findchildren(QObject_root(), 'errordlg', true)
```

## See also

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
