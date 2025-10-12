# string

string array constructor.

## Syntax

- res = string(var)

## Input argument

- var - characters, a cell of characters, or an logical or numeric array.

## Output argument

- res - a string array

## Description

        string converts input into string array.

## Examples

```matlab
R = string({'these', 'are'; 'test', 'strings'})
R2 = ["these", "are"; "test", "strings"];
```

```matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
R = string(M)
D = double(R)
```

## See also

[strings](../string/strings.md), [double](../double/double.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
