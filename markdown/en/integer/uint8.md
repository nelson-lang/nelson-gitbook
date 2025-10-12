# uint8

Converts to 8-bit unsigned integer.

## Syntax

- Y = uint8(X)

## Input argument

- X - a matrix of double, single or integers.

## Output argument

- Y - a matrix of 8-bit unsigned integer.

## Description

<p>
            uint8 converts value to 8-bit unsigned integer type.</p>

<p>The value is rounded to the nearest uint8 value on conversion. A value that is above or below the range for an uint8 class is mapped to one of the endpoints of the range [0, 255].</p>

## Example

```matlab
A = [1 256 -120 127 -1 215]
B = uint8(A)
```

## See also

[intmax](../integer/intmax.md), [intmin](../integer/intmax.md), [numeric types](../interpreter/numeric_types.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
