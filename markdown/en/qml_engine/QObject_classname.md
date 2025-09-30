# QObject_classname

Returns class name of an QObject handle.

## Syntax

- s = QObject_classname(h)

## Input argument

- h - an QObject handle.

## Output argument

- s - a string: class name.

## Description

<p>Returns class name of an QObject handle.</p>

## Example

```matlab
h1 = QObject_root()
h1.className
QObject_classname(h1)
```

## See also

[QObject_set (set)](../qml_engine/QObject_set.md), [QObject_get (get)](../qml_engine/QObject_get.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
