



fileread


fileread

Read contents of file as text.

## Syntax

- str = fileread(filename)
- str = fileread(filename, type)
- str = fileread(filename, 'char', eol)

## Input argument

 - filename - a string: a file name
 - type - a string: 'char' or 'cell'. 'cell' will converts text file to a cell of string. 'char' by default.
 - eol - a string: 'native', 'pc' or 'unix'. Set end of line. 'unix' by default.

## Output argument

 - str - a string.

## Description


  <p><b>fileread</b> read contents of file as text.</p>


## Example

```Nelson
str = fileread([nelsonroot(),'/CHANGELOG.md'])
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'char')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'cell')
```

## See also

fgetl.md fgetl, filewrite.md filewrite.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



