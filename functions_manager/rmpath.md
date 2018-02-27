



rmpath


rmpath

Remove directory from search path.

## Syntax

- rmpath(dirname)
- previouspaths = rmpath(dirname)

## Input argument

 - dirname - name of directory to remove

## Output argument

 - previouspaths - a string: path prior to removing the specified paths

## Description


  <p><b>rmpath</b> removes directory from search path.</p>


## Example

```Nelson
path
addpath(tempdir())
path			
rmpath(tempdir())
path
```

## See also

path.md path, addpath.md addpath.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



