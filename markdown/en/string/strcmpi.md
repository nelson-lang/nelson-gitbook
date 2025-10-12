# strcmpi

Strings comparaison (case insensitive).

## Syntax

- res = strcmpi(s1, s2)

## Input argument

- s1 - a string, string array or cell of strings.
- s2 - a string, string array or cell of strings.

## Output argument

- res - a logical: true if the two are identical (case insensitive) and false otherwise.

## Description

        strcmpi compares two strings (case insensitive).

## Example

```matlab
strcmpi('Nelson', 'nelSon')
strcmpi('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmpi(A, B)
strcmpi(A, C)
strcmpi(C, 'C')

```

## See also

[char](../string/char.md), [strcmp](../string/strcmp.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
