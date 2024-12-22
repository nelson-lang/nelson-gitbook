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
  <p>When you create a numeric array of large integers in Nelson, especially when they exceed the maximum precision representable by double (larger than flintmax), Nelson initially stores these values as double-precision floating-point numbers by default.</p>
  <p>This default representation can lead to a loss of precision, as floating-point numbers have limited precision.</p>
  <p>To maintain the full precision of these large integer values, it's advisable to explicitly convert each scalar element of the array to the int64 or uint64 data type using the i64 or u64 notation (see example).</p>
  <p>This way, you ensure that the values are stored with their full precision as 64-bit signed or unsigned integers, respectively, rather than as double-precision floating-point numbers.</p>

## Example

```matlab
A = [1 12 -120 127 -9e24 9e23]
B = int64(A)
R1 = int64([72057594035891654 81997179153022975])
R2 = [72057594035891654i64 81997179153022975i64]
```

## See also

[intmax](intmax.md), [intmin](intmax.md), [numeric types](../interpreter/numeric_types.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
