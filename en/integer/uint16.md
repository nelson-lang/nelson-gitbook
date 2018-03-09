

# uint16

Converts to 16-bit unsigned integer.

## Syntax

- Y = uint16(X)

## Input argument

 - X - a matrix of double, single or integers.

## Output argument

 - Y - a matrix of 16-bit unsigned integer.

## Description


  <p><b>uint16</b> converts value to 16-bit unsigned integer type.</p>
  <p>The value is rounded to the nearest uint16 value on conversion. A value that is above or below the range for an uint16 class is mapped to one of the endpoints of the range [0, 65535].</p>


## Example

```Nelson
A = [1 -32769 -120 127 32767 32768]
B = uint16(A)
```

## See also

[intmax](intmax.md), [intmin](intmax.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



