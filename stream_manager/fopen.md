



fopen


fopen

Open a file in Nelson.

## Syntax

- fid = fopen(filename)
- fid = fopen(filename, permission)
- [fid, msg] = fopen(filename)
- [fid, msg] = fopen(filename, permission)
- [filename, permission] = fopen(fid)
- fids = fopen('all')

## Input argument

 - filename - a string: filename to open
 - permission - a string: permission applied on file: 'r', 'w', 'a', 'r+', 'a+'

## Output argument

 - fid - an integer value: a file descriptor or -1 if there is an error.
 - msg - a string: error message returned by fopen or ''.
 - fids - a vector of integer values: list of files descriptor opened in Nelson.

## Description


  <p><b>fopen</b> opens a file in Nelson.</p>


## Example

```Nelson
fid = fopen([tempdir(), filesep(), 'fopen_tst'], 'wt');
[filename, permission] = fopen(fid)
fids = fopen('all')
status = fclose(fd)
[filename, permission] = fopen(stdin)
[filename, permission] = fopen(stdout)
[filename, permission] = fopen(stderr)
```

## See also

fclose.md fclose.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



