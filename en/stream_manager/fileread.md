

# fileread

Read contents of file as text.

## Syntax

- str = fileread(filename)
- str = fileread(filename, type)
- str = fileread(filename, 'char', eol)

## Input argument

 - filename - a string: a file name
 - type - a string: 'char', 'cell' or 'string'. 'cell' will converts text file to a cell of string. 'string' will converts text file to a string array. 'char' by default.
 - eol - a string: 'native', 'pc' or 'unix'. Set end of line. 'unix' by default.

## Output argument

 - str - a string, cell of strings or string array.

## Description


  <p><b>fileread</b> read contents of file as text.</p>


## Example

```matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'])
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'char')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'cell')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')
```

## See also

[fgetl](fgetl.md), [filewrite](filewrite.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



