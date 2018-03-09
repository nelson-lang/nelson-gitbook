

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


  <p><b>res = rmfile(filename)</b> removes the file <b>filename</b>.</p>


## Example

```Nelson
fd = fopen([tempdir(), '/test_rmfile.txt'], 'wt')
fclose(fd)
isfile([tempdir(), '/test_rmfile.txt'])
rmfile([tempdir(), '/test_rmfile.txt'])
isfile([tempdir(), '/test_rmfile.txt'])
```

## See also

[isfile](isfile.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



