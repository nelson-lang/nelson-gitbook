

# strcmpi

Strings comparaison (case insensitive).

## Syntax

- res = strcmpi(s1, s2)

## Input argument

 - s1 - a string or cell of strings.
 - s2 - a string or cell of strings.

## Output argument

 - res - a logical: true if the two are identical (case insensitive) and false otherwise.

## Description

<b>strcmpi</b> compares two strings (case insensitive).

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

[char](char.md), [strcmp](strcmp.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



