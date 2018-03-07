



addpath


addpath

Add directories to functions search path.

## Syntax

- addpath(dirname)
- addpath(dirname, ..., dirname)
- addpath(dirname, ..., dirname, '-begin')
- addpath(dirname, ..., dirname, '-end')
- previous = addpath(dirname)
- previous = addpath(dirname, ..., dirname)
- previous = addpath(dirname, ..., dirname, '-begin')
- previous = addpath(dirname, ..., dirname, '-end')

## Input argument

 - dirname - a string: a directory
 - '-end' or '-begin' - append dirname at the end or begin of the list.

## Output argument

 - previous - returns previous path before adding

## Description


  <p><b>addpath</b> add directories to search path.</p>
  <p>It is also possible to add lists of directory names separated by pathsep.</p>


## Example

```Nelson
path()
addpath(tempdir())
path
rmpath(tempdir())
path
```

## See also

path.md path, rmpath.md rmpath, restoredefaultpath.md restoredefaultpath.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



