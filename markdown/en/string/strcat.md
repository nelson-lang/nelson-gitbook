# strcat

concatenate strings horizontally.

## Syntax

- res = strcat(s1, s2, ..., sN)

## Input argument

- s1, s2, ..., sN - a string, string array or cell of strings.

## Output argument

- res - a string, string array or cell of strings.

## Description

<p>
            strcat concatenate strings horizontally.</p>

<p>If all inputs are character arrays, then res is a character array.</p>

<p>If any input is a string array, then the res is a string array.</p>

<p>If any input is a cell array, and none are string arrays, then res is a cell array of character vectors.</p>

<p>For cell and string array inputs, strcat does not remove trailing white space.</p>

<p>For character array inputs, strcat removes trailing ASCII white-space characters.</p>

## Example

```matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
```

## See also

[append](../string/append.md), [join](../string/join.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
