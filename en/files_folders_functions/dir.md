# dir

Returns file list.

## Syntax

- dir
- dir(dirname)
- dir(dirname, '-s')
- res =dir()
- res = dir(dirname)
- res = dir(dirname, '-s')

## Input argument

- dirname - a string: file or directory name.
- '-s' - a string: scan also subdirectories.

## Output argument

- res - a struct with fields: name, date, bytes, isdir, datenum.

## Description

  <p><b>dir</b> displays the list of files and folders in the current folder.</p>
  <p>* (wildcard) is supported in filename and path name.</p>

## Example

```matlab
res = dir(nelsonroot())
res = dir(nelsonroot(), '-s')
```

## See also

[ls](ls.md), [isdir](isdir.md), [isfile](isfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
