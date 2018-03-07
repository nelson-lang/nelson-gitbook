



int16


int16

Converts to 16-bit signed integer.

## Syntax

- Y = int16(X)

## Input argument

 - X - a matrix of double, single or integers.

## Output argument

 - Y - a matrix of 16-bit integer.

## Description


  <p><b>int16</b> converts value to 16-bit integer type.</p>
  <p>The value is rounded to the nearest int16 value on conversion. A value that is above or below the range for an int16 class is mapped to one of the endpoints of the range [-32768, 32767].</p>


## Example

```Nelson
A = [1 -32769 -120 127 32767 32768]
B = int16(A)
```

## See also

intmax.md intmax, intmax.md intmin.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



