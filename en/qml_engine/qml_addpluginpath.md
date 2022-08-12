# qml_addpluginpath

Adds path as directory where the qml engine searches for native plugins.

## Syntax

- qml_addpluginpath(path)

## Input argument

- path - a string : valid path.

## Description

  <p><b>qml_addpluginpath</b> adds <b>path</b> as a directory where the engine searches for native plugins.</p>
  <p>By default, the list contains only <b>.</b>. The newly added path will be first in the <b>qml_pluginpathlist</b>.</p>

## Example

```matlab
qml_pluginpathlist()
qml_addpluginpath(tempdir)
qml_pluginpathlist()
```

## See also

[qml_pluginpathlist](qml_pluginpathlist.html), [qml_addimportpath](qml_addimportpath.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
