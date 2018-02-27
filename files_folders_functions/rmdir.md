



rmdir


rmdir

Removes a directory.

## Syntax

- rmdir(dirname)
- rmdir(dirname, 's')
- res = rmdir(dirname)
- res = rmdir(dirname, 's')
- [res, msg] = rmdir(dirname)
- [res, msg] = rmdir(dirname, 's')

## Input argument

 - dirname - a string: file or directory name.
 - 's' - a string: removes also subdirectories.

## Output argument

 - res - a logical: true or false.
 - msg - a string: error message or ''.

## Description


  <p><b>res = rmdir(dirname)</b> removes the directory <b>dirname</b>.</p>
  <p>If the directory is not empty, you must use the s argument.</p>


## Example

```Nelson
mkdir([tempdir(), '/test'])
rmdir([tempdir(), '/test'])
```

## See also

isdir.md isdir, mkdir.md mkdir.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



