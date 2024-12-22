# bitxor

Bit-wise XOR

## Syntax

- C = bitxor(A, B)
- C = bitxor(A, B, assumedtype)

## Input argument

- A - a variable: double, logical, integer
- B - a variable: double, logical, integer
- assumedtype - 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

## Output argument

- C - Bit-wise XOR result

## Description

  <p><b>C = bitxor(A, B)</b> returns the bit-wise XOR of <b>A</b> and <b>B</b>.</p>

## Example

```matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitxor(A, B)
```

## See also

[bitand](bitand.md), [bitor](bitor.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
