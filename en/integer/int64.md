# int64

Converts to 64-bit signed integer.

## Syntax

- Y = int64(X)

## Input argument

- X - a matrix of double, single or integers.

## Output argument

- Y - a matrix of 64-bit integer.

## Description

  <p><b>int64</b> converts value to 64-bit integer type.</p>
  <p>The value is rounded to the nearest int64 value on conversion. A value that is above or below the range for an int64 class is mapped to one of the endpoints of the range [-9223372036854775808,9223372036854775807].</p>

## Example

```matlab
A = [1 12 -120 127 -9e24 9e23]
B = int64(A)
```

## See also

[intmax](intmax.md), [intmin](intmax.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
