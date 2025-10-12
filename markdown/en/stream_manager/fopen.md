# fopen

Open a file in Nelson.

## Syntax

- fid = fopen(filename)
- fid = fopen(filename, permission)
- [fid, msg] = fopen(filename)
- [fid, msg] = fopen(filename, permission)
- [fid, msg] = fopen(filename, permission, machinefmt, encoding)
- [filename, permission, machinefmt, encoding] = fopen(fid)
- fids = fopen('all')

## Input argument

- filename - a string: filename to open
- permission - a string: permission applied on file: 'r', 'w', 'a', 'r+', 'a+'
- machinefmt - a string: machine format applied on file: 'n' or 'native', 'b' or 'ieee-be', 'l' or 'ieee-le', 's' or 'ieee-be.l64', 'a' or 'ieee-le.l64'
- encoding - a string: ccharacter encoding applied on file: 'UTF-8', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

## Output argument

- fid - an integer value: a file descriptor or -1 if there is an error.
- msg - a string: error message returned by fopen or ''.
- fids - a vector of integer values: list of files descriptor opened in Nelson.

## Description

<p>
            fopen opens a file in Nelson.</p>

<p>functions fprintf, fgetl, fgets, fread, and fwrite use character encoding for subsequent read and write operations.</p>

## Examples

```matlab

fid = fopen([tempdir(), filesep(), 'fopen_tst'], 'wt');
[filename, permission] = fopen(fid)
fids = fopen('all')
status = fclose(fd)
[filename, permission] = fopen(stdin)
[filename, permission] = fopen(stdout)
[filename, permission] = fopen(stderr)

```

characters encoding

```matlab

TEXT_REF = 'Виртуальная';
filename = [tempdir(), 'fwrite_example_Windows-1251.txt'];
F = fopen(filename, 'wt', 'n', 'windows-1251');
W = fwrite(F, TEXT_REF, 'char')
fclose(F);
F = fopen(filename, 'rt', 'n', 'windows-1251');
TXT_READ = fread(F, '*char')
fclose(F);
```

## See also

[fclose](../stream_manager/fclose.md), [feof](../stream_manager/feof.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
