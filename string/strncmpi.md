



strncmpi


strncmpi

Compares first n characters of strings (case sensitive).

## Syntax

- res = strncmpi(s1, s2, n)

## Input argument

 - s1 - a string or cell of strings.
 - s2 - a string or cell of strings.
 - n - an integer value: numbers of characters to compare.

## Output argument

 - res - a logical: true if the two are identical and false otherwise.

## Description

<b>strncmpi</b> compares the first n characters of two strings (case insensitive).

## Example

```Nelson
strncmpi('Nelson', 'nelSon', 3)
strncmpi('Nelson', 'Nelson', 3)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strncmpi(A, B, 2)
strncmpi(A, C, 2)
strncmpi(C, 'C', 4)
```

## See also

strncmp.md strncmp, strcmp.md strcmp.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



