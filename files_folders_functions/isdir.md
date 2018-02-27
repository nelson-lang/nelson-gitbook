



isdir


isdir

Returns true is the input argument is an directory.

## Syntax

- r = isdir(dirname)

## Input argument

 - dirname - a string: directory name to check.

## Output argument

 - r - a logical: true if it is an directory.

## Description


  <p><b>isdir(dirname)</b> returns <b>true</b> if <b>dirname</b> is a directory.</p>


## Example

```Nelson
isdir(nelsonroot())
isdir([nelsonroot(), '/not_exist_dir'])
```

## See also

mkdir.md mkdir, isfile.md isfile.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



