# qml_addimportpath

Adds path as directory where the qml engine searches for installed modules.

## Syntax

- qml_addimportpath(path)

## Input argument

- path - a string : valid path.

## Description

<p>
            qml_addimportpath adds path as a directory where the engine searches for installed modules in a URL-based directory structure.</p>

<p>The newly added path will be first in qml_importpathlist.</p>

## Example

```matlab
qml_importpathlist()
qml_addimportpath(tempdir)
qml_importpathlist()

```

## See also

[qml_importpathlist](../qml_engine/qml_importpathlist.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
