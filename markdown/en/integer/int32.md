# int32

Converts to 32-bit signed integer.

## 📝 Syntax

- Y = int32(X)

## 📥 Input argument

- X - a matrix of double, single or integers.

## 📤 Output argument

- Y - a matrix of 32-bit integer.

## 📄 Description

<b>int32</b> converts value to 32-bit integer type.

The value is rounded to the nearest int32 value on conversion. A value that is above or below the range for an int32 class is mapped to one of the endpoints of the range [-2147483648, 2147483647].

## 💡 Example

```matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = int32(A)
```

## 🔗 See also

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
