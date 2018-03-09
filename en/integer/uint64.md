

# uint64

Converts to 64-bit unsigned integer.

## Syntax

- Y = uint64(X)

## Input argument

 - X - a matrix of double, single or integers.

## Output argument

 - Y - a matrix of 64-bit unsigned integer.

## Description


  <p><b>uint64</b> converts value to 64-bit unsigned integer type.</p>
  <p>The value is rounded to the nearest uint64 value on conversion. A value that is above or below the range for an uint64 class is mapped to one of the endpoints of the range [0, 18446744073709551616].</p>


## Example

```Nelson
A = [1 12 -120 127 -9e24 9e23]
B = uint64(A)
```

## See also

[intmax](intmax.md), [intmin](intmax.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



