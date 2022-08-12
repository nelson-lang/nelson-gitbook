# qml_offlinestoragepath

Get the Property contains the directory to store offline user data.

## Syntax

- p = qml_offlinestoragepath()

## Input argument

- path_data - a string

## Output argument

- p - a string: path.

## Description

  <p>Get the Property contains the directory to store offline user data.</p>

## See also

[qml_setofflinestoragepath](qml_setofflinestoragepath.html).

## Example

```matlab
qml_offlinestoragepath()
qml_setofflinestoragepath(tmpdir())
qml_offlinestoragepath()
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
