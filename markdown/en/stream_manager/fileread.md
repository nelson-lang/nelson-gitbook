# fileread

Read contents of file as text.

## 📝 Syntax

- str = fileread(filename)
- str = fileread(filename, type)
- str = fileread(filename, 'char', eol)
- str = fileread(filename, 'char', eol, encoding)

## 📥 Input argument

- filename - a string: a file name
- type - a string: 'char', 'cell' or 'string'. 'cell' will converts text file to a cell of string. 'string' will converts text file to a string array. 'char' by default.
- eol - a string: 'native', 'pc' or 'unix'. Set end of line. 'unix' by default.
- encoding - a string: 'UTF-8' (default), 'auto', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

## 📤 Output argument

- str - a string, cell of strings or string array.

## 📄 Description

<b>fileread</b> read contents of file as text.

if encoding is 'auto', nelson will try to detect best encoding to read contents of file as text.

## 💡 Examples

```matlab
str = fileread([nelsonroot(),'/CHANGELOG.md'])
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'char')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'cell')
str = fileread([nelsonroot(),'/CHANGELOG.md'], 'string')

```

```matlab
str = 'живете зело, земля, и иже и како люди';
filewrite([tempdir(), 'example_fileread.txt'], str, 'native', 'windows-1251')
T1 = fileread([tempdir(), 'example_fileread.txt'], 'char', 'native', 'windows-1251')
T2 = fileread([tempdir(), 'example_fileread.txt'], 'string', 'native', 'auto')

```

## 🔗 See also

[fgetl](../stream_manager/fgetl.md), [filewrite](../stream_manager/filewrite.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
