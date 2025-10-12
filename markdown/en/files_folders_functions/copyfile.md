# copyfile

Copy files or folder.

## Syntax

- copyfile(source, destination)
- [status, msg] = copyfile(source, destination)
- [status, msg] = copyfile(source, destination, 'f')

## Input argument

- source - a string: file or directory.
- destination - a string: file or directory.
- 'f' or 'F' - force copy even destination is not writable.

## Output argument

- status - a logical true or false
- msg - a string: error message

## Description

<p>
            copyfile(source , destination) copies the file or directory , source (and subdirectories) to the file or directory, destination.</p>

<p>If source is a directory, destination can not be a file.</p>

<p>
                copyfile replaces existing files without warning.</p>

## Example

```matlab
copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
[status, msg] = copyfile([nelsonroot(), '/etc/startup.m'], [tempdir(), 'startup.m'])
```

## See also

[isdir](../files_folders_functions/isdir.md), [rmfile](../files_folders_functions/rmfile.md).

## History

| Version | Description                                      |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

## Author

Allan CORNET
