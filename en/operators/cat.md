

# cat

Concatenate arrays.

## Syntax

- R = cat(dim, A, B)
- R = cat(dim, A1, A2, ..., An)

## Input argument

 - dim - Dimension to operate along: positive integer scalar.
 - A - a variable: first input.
 - B - a variable: second input.
 - A1, A2, ..., An - List of inputs to concatenate

## Output argument

 - R - concatenated array

## Description


  <p><b>R = cat(dim, M1, M2, ... , MN)</b> returns the concatenation of M1, M2, ... , MN along the dimension <b>dim</b>.</p>


## Example

```matlab
A = eye(2, 2);
B = ones(2, 2);
C = cat(2, A, B)
```

## See also

[vertcat](vertcat.md), [horzcat](horzcat.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



