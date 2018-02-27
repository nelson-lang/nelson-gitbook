



strcmp


strcmp

Strings comparaison.

## Syntax

- res = strcmp(s1, s2)

## Input argument

 - s1 - a string or cell of strings.
 - s2 - a string or cell of strings.

## Output argument

 - res - a logical: true if the two are identical and false otherwise.

## Description

<b>strcmp</b> compares two strings.

## Example

```Nelson
strcmp('Nelson', 'nelSon')
strcmp('Nelson', 'Nelson')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strcmp(A, B)
strcmp(A, C)
strcmp(C, 'C')
```

## See also

char.md char.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



