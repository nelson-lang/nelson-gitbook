# qml_addpluginpath

Adds path as directory where the qml engine searches for native plugins.

## Syntax

- qml_addpluginpath(path)

## Input argument

- path - a string : valid path.

## Description

<p>
            qml_addpluginpath adds path as a directory where the engine searches for native plugins.</p>

<p>By default, the list contains only .. The newly added path will be first in the qml_pluginpathlist.</p>

## Example

```matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()

```

## See also

[qml_pluginpathlist](../qml_engine/qml_pluginpathlist.md), [qml_addimportpath](../qml_engine/qml_addimportpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
