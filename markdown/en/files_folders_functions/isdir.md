# isdir

Returns true is the input argument is an directory.

## Syntax

- r = isdir(dirname)

## Input argument

- dirname - a string: directory name to check.

## Output argument

- r - a logical: true if it is an directory.

## Description

<p>
            isdir(dirname) returns true if dirname is a directory.</p>

<p>
                isdir and isfolder are same.</p>

## Example

```matlab
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
```

## See also

[mkdir](../files_folders_functions/mkdir.md), [isfile](../files_folders_functions/isfile.md), [isfolder](../files_folders_functions/isfolder.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
