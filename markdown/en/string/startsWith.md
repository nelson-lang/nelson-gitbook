# startsWith

checks if string starts with pattern.

## Syntax

- tf = startsWith(str, pattern)
- tf = startsWith(str, pattern,'IgnoreCase', true)
- tf = startsWith(str, pattern,'IgnoreCase', false)

## Input argument

- str - a string, string array or cell of strings.
- pattern - a string to find.

## Output argument

- tf - a matrix of logical.

## Description

        startsWith returns true if str starts with pattern.

## Example

```matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


```

## See also

[endsWith](../string/endsWith.md), [contains](../string/contains.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
