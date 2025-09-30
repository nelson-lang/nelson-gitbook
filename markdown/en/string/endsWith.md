# endsWith

checks if string ends with pattern.

## Syntax

- tf = endsWith(str, pattern)
- tf = endsWith(str, pattern,'IgnoreCase', true)
- tf = endsWith(str, pattern,'IgnoreCase', false)

## Input argument

- str - a string, string array or cell of strings.
- pattern - a string to find.

## Output argument

- tf - a matrix of logical.

## Description

<b>endsWith</b>returns<b>true</b>if<b>str</b>ends with<b>pattern</b>.

## Example

```matlab

str = 'To make a mountain out of a molehill';
k = endsWith (str, 'hill')
k = endsWith (str, 'molehill')
k = endsWith (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = endsWith(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = endsWith(A, "son")


```

## See also

[startsWith](../string/startsWith.md), [contains](../string/contains.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
