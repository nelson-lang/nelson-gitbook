



filewrite


filewrite

Write text to a file.

## Syntax

- filewrite(filename, txt)
- filewrite(filename, txt, eol)

## Input argument

 - filename - a string: a filename
 - txt - a string or cell of string: content to save in file
 - eol - a string: 'native' (system default), 'pc' [(char(13), char(10)], 'unix' [char(10)]

## Description


  <p><b>filewrite</b> saves a string or cell of string to a file.</p>
  <p>file saved uses ascii or UTF-8 (NO-BOM) encoding.</p>


## Example

```Nelson
str = fileread([nelsonroot(),'/CHANGELOG.md'])
    	filewrite([tempdir(), '/CHANGELOG.md'], str)
```

## See also

fileread.md fileread.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



