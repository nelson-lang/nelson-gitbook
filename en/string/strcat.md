

# strcat

concatenate strings horizontally.

## Syntax

- res = strcat(s1, s2, ..., sN)

## Input argument

 - s1, s2, ..., sN - a string, string array or cell of strings.

## Output argument

 - res - a string, string array or cell of strings.

## Description


  <p><b>strcat</b> concatenate strings horizontally.</p>
  <p>If all inputs are character arrays, then <b>res</b> is a character array.</p>
  <p>If any input is a string array, then the <b>res</b> is a string array.</p>
  <p>If any input is a cell array, and none are string arrays, then <b>res</b> is a cell array of character vectors.</p>
  <p>For cell and string array inputs, <b>strcat</b> does not remove trailing white space.</p>
  <p>For character array inputs, <b>strcat</b> removes trailing ASCII white-space characters.</p>


## Example

```matlab
strcat("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = strcat(A, B)
```

## See also

[append](append.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



