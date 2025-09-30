# ischar

Return true if variable var is a char array.

## Syntax

- res = ischar(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

<b>ischar</b>returns a logical 1 if the argument is a char array and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = ischar(A)
```

```matlab
B = 'NelSon';
res = ischar(B)
```

```matlab
C = [1 ; 3];
res = ischar(C)
```

## See also

[class](../types/class.md), [char](../string/char.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
