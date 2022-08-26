# QObject_root

QObject root object.

## Syntax

- r = QObject_root()

## Output argument

- h - QObject handle of Nelson gui.

## Description

  <p>Returns QObject handle of Nelson gui.</p>

## See also

[QObject_set (set)](QObject_set.md), [QObject_get (get)](QObject_get.md).

## Example

```matlab
h1 = QObject_root()
h1.windowTitle
h1.windowTitle = 'Your title'
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
