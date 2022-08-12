# who

List variables in memory or in .nh5 or in .mat file.

## Syntax

- who
- s = who()
- who(scope)
- s = who(scope)
- who('-file', filename)
- s = who('-file', filename)
- who(... , var1, ..., varN)
- s = who(... , var1, ..., varN)

## Input argument

- scope - a string: 'global', 'base', 'caller', 'local' or '-file'.
- filename - string: an existing filename .nh5 or .mat file.
- var1, ..., varN - string: variable name.

## Output argument

- s - a cell of strings: list of variable's name.

## Description

  <p><b>who</b> displays current variable names.</p>

## Example

```matlab
clear
who
A = 3
b= 3
who
s = who()
```

## See also

[what](../functions_manager/what.md), [clear](clear.md), [whos](whos.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
