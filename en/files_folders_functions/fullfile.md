# fullfile

Build full file name from parts.

## Syntax

- R = fullfile(part1, ... , partN)

## Input argument

- part1, ... , partN - a string or cell of string: filename to concat.

## Output argument

- R - a character array or string array or cell array of character vectors.

## Description

  <p><b>R = fullfile(part1, ... , partN)</b> build full file name from parts.</p>

## Example

```matlab
fullfile([nelsonroot(), '/./toto'])
```

## See also

[fullpath](fullpath.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
