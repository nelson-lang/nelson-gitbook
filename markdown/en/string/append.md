# append

combines strings horizontally.

## Syntax

- res = append(s1, s2, ..., sN)

## Input argument

- s1, s2, ..., sN - a string, string array or cell of strings.

## Output argument

- res - a string, string array or cell of strings.

## Description

<p>
            strcat combines strings horizontally.</p>

<p>If all inputs are character arrays, then res is a character array.</p>

<p>If any input is a string array, then the res is a string array.</p>

<p>If any input is a cell array, and none are string arrays, then res is a cell array of character vectors.</p>

<p>
                append does not remove trailing white space.</p>

## Example

```matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
```

## See also

[strcat](../string/strcat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
