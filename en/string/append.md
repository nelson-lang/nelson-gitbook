

# append

combines strings horizontally.

## Syntax

- res = append(s1, s2, ..., sN)

## Input argument

 - s1, s2, ..., sN - a string, string array or cell of strings.

## Output argument

 - res - a string, string array or cell of strings.

## Description


  <p><b>strcat</b> combines strings horizontally.</p>
  <p>If all inputs are character arrays, then <b>res</b> is a character array.</p>
  <p>If any input is a string array, then the <b>res</b> is a string array.</p>
  <p>If any input is a cell array, and none are string arrays, then <b>res</b> is a cell array of character vectors.</p>
  <p><b>append</b> does not remove trailing white space.</p>


## Example

```matlab
append("Nelson", 'nelSon')
A = {'abcde','fghi'};
B = {'jkl','mn'};
C = append(A, B)
```

## See also

[strcat](strcat.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



