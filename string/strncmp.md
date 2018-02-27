



strncmp


strncmp

Compares first n characters of strings.

## Syntax

- res = strncmp(s1, s2, n)

## Input argument

 - s1 - a string or cell of strings.
 - s2 - a string or cell of strings.
 - n - an integer value: numbers of characters to compare.

## Output argument

 - res - a logical: true if the two are identical and false otherwise.

## Description

<b>strncmp</b> compares the first n characters of two strings (case sensitive).

## Example

```Nelson
strncmp('Nelson', 'nelSon', 3)
strncmp('Nelson', 'Nelson', 3)

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
B = {'Handle', 'Struct'; 'Toolboxes', 'Modules'}
C = {'C', 'Contents'; 'Nel', 'son'}
strncmp(A, B, 2)
strncmp(A, C, 2)
strncmp(C, 'C', 4)
```

## See also

strcmp.md strcmp.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



