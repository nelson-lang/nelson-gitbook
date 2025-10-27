# bitor

Bit-wise OR

## 📝 Syntax

- C = bitor(A, B)
- C = bitor(A, B, assumedtype)

## 📥 Input argument

- A - a variable: double, logical, integer
- B - a variable: double, logical, integer
- assumedtype - 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

## 📤 Output argument

- C - Bit-wise OR result

## 📄 Description

<b>C = bitor(A, B)</b> returns the bit-wise OR of <b>A</b> and <b>B</b>.

## 💡 Example

```matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitor(A, B)

```

## 🔗 See also

[bitand](../operators/bitand.md), [bitxor](../operators/bitxor.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
