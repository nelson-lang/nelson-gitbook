# bitand

Bit-wise AND

## Syntax

- C = bitand(A, B)
- C = bitand(A, B, assumedtype)

## Input argument

- A - a variable: double, logical, integer
- B - a variable: double, logical, integer
- assumedtype - 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

## Output argument

- C - Bit-wise AND result

## Description

<p>
            C = bitand(A, B) returns the bit-wise AND of A and B.</p>

## Example

```matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitand(A, B)

```

## See also

[bitor](../operators/bitor.md), [bitxor](../operators/bitxor.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
