

# ndims

Number of dimensions of an array.

## Syntax

- n = ndims(M)

## Input argument

 - M - a variable

## Output argument

 - n - a integer value: Number of dimensions of M.

## Description


  <p><b>n = ndims(M)</b> return the number of dimension of the array <b>M</b>.</p>
  <p><b>M</b> is greater than or equal to 2.</p>


## Example

```matlab
ndims(ones(3, 0))
ndims(3)
ndims([1 2 3 4 5])
ndims(ones(3, 4, 5))
```

## See also

[size](size.md), [length](length.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



