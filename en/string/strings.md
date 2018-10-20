

# strings

Create string array without characters.

## Syntax

- C = strings()
- C = strings(m)
- C = strings(m, n)
- C = strings(m, n, ... , p)
- C = strings(sz)

## Input argument

 - m, n, ... , p - dimensions of the string array to create.
 - sz - a vector of integer values (dimensions of the cell to create).

## Output argument

 - C - a string array

## Description


  <p><b>strings</b> returns a cell array of empty matrices.</p>


## Example

```matlab
A = eye(2, 4);
sz = size(A)
C = strings(sz)
```

## See also

[cell](../data_structures/cell.md), [isstring](../types/isstring.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



