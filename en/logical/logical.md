

# logical

Converts a numeric value to logical type.

## Syntax

- Y = logical(X)

## Input argument

 - X - a numeric value.

## Output argument

 - Y - a logical value.

## Description


  <p><b>logical</b> converts a numeric value to logical type.</p>
  <p>Nonzero value converted to true and zeros values converted to false.</p>
  <p>Complex numbers returns an error.</p>


## Example

```Nelson
A = eye(2, 2)
B = logical(A)
islogical(B)
```

## See also

[islogical](../types/islogical.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



