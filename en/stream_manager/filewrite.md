

# filewrite

Write text to a file.

## Syntax

- filewrite(filename, txt)
- filewrite(filename, txt, eol)

## Input argument

 - filename - a string: a filename
 - txt - a string, cell of string or string array: content to save in file
 - eol - a string: 'native' (system default), 'pc' [(char(13), char(10)], 'unix' [char(10)]

## Description


  <p><b>filewrite</b> saves a character array, cell of string or string array to a file.</p>
  <p>file saved uses ascii or UTF-8 (NO-BOM) encoding.</p>


## Example

```matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')
    	filewrite([tempdir(), '/CHANGELOG.md'], str)
```

## See also

[fileread](fileread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



