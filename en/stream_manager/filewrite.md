

# filewrite

Write text to a file.

## Syntax

- filewrite(filename, txt)
- filewrite(filename, txt, eol)
- filewrite(filename, txt, eol, encoding)

## Input argument

 - filename - a string: a filename
 - txt - a string, cell of string or string array: content to save in file
 - eol - a string: 'native' (system default), 'pc' [(char(13), char(10)], 'unix' [char(10)]
 - encoding - a string: 'UTF-8' (default), 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

## Description


  <p><b>filewrite</b> saves a character array, cell of string or string array to a file.</p>
  <p>file saved uses by default UTF-8 (NO-BOM) encoding.</p>


## Examples

```matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')
    	filewrite([tempdir(), 'CHANGELOG.md'], str)
```
characters encoding
```matlab
str = 'живете зело, земля, и иже и како люди';
filewrite([tempdir(), 'example_filewrite.txt'], str, 'native', 'windows-1251')
```

## See also

[fileread](fileread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



