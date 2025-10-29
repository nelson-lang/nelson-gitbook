# uint64

Converts to 64-bit unsigned integer.

## 📝 Syntax

- Y = uint64(X)

## 📥 Input argument

- X - a matrix of double, single or integers.

## 📤 Output argument

- Y - a matrix of 64-bit unsigned integer.

## 📄 Description

<b>uint64</b> converts value to 64-bit unsigned integer type.

The value is rounded to the nearest uint64 value on conversion. A value that is above or below the range for an uint64 class is mapped to one of the endpoints of the range [0, 18446744073709551616].

When you create a numeric array of large integers in Nelson, especially when they exceed the maximum precision representable by double (larger than flintmax), Nelson initially stores these values as double-precision floating-point numbers by default.

This default representation can lead to a loss of precision, as floating-point numbers have limited precision.

To maintain the full precision of these large integer values, it's advisable to explicitly convert each scalar element of the array to the int64 or uint64 data type using the i64 or u64 notation (see example).

This way, you ensure that the values are stored with their full precision as 64-bit signed or unsigned integers, respectively, rather than as double-precision floating-point numbers.

## 💡 Example

```matlab
A = [1 12 -120 127 -9e24 9e23]
B = uint64(A)
R1 = uint64([72057594035891654 81997179153022975])
R2 = [72057594035891654u64 81997179153022975u64]


```

## 🔗 See also

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
