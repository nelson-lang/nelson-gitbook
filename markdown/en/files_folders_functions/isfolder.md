# isfolder

Returns true is the input argument is an directory.

## Syntax

- r = isfolder(dirname)

## Input argument

- dirname - a string: directory name to check.

## Output argument

- r - a logical: true if it is an directory.

## Description

<p>
            isfolder(dirname) returns true if dirname is a directory.</p>

## Example

```matlab
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
```

## See also

[mkdir](../files_folders_functions/mkdir.md), [isfile](../files_folders_functions/isfile.md), [isdir](../files_folders_functions/isdir.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
