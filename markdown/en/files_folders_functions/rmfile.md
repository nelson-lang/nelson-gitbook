# rmfile

Removes a file.

## Syntax

- rmfile(filename)
- res = rmfile(filename)
- [res, msg] = rmfile(filename)
- [res, msg] = rmfile(filename)

## Input argument

- filename - a string: file name.

## Output argument

- res - a logical: true or false.
- msg - a string: error message or ''.

## Description

<p>res = rmfile(filename) removes the file filename.</p>

## Example

```matlab
fd = fopen([tempdir(), 'test_rmfile.txt'], 'wt')
fclose(fd)
isfile([tempdir(), 'test_rmfile.txt'])
rmfile([tempdir(), 'test_rmfile.txt'])
isfile([tempdir(), 'test_rmfile.txt'])


```

## See also

[isfile](../files_folders_functions/isfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
