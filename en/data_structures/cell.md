

# cell

Create cell array of empty matrices.

## Syntax

- C = cell()
- C = cell(m)
- C = cell(m, n)
- C = cell(m, n, ... , p)
- C = cell(sz)

## Input argument

 - m, n, ... , p - dimensions of the cell to create.
 - sz - a vector of integer values (dimensions of the cell to create).

## Output argument

 - C - a cell

## Description


  <p><b>cell</b> returns a cell array of empty matrices.</p>
  <p><b>cell()</b> is equivalent to <b>cell(0)</b></p>


## Example

```Nelson
A = eye(2, 4);
sz = size(A)
C = cell(sz)
```

## See also

[struct](struct.md), [iscell](../types/iscell.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



