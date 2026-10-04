# bitget

Get selected bits.

## 📝 Syntax

- C = bitget(A, bit)
- C = bitget(A, bit, assumedtype)

## 📥 Input argument

- A - Integer array, or nonnegative integer-valued double array.
- bit - Positive integer bit position.
- assumedtype - Integer type name used for double input.

## 📤 Output argument

- C - Array containing zero or one values.

## 📄 Description

<b>C = bitget(A, bit)</b> returns the value of the selected bit in each element of <b>A</b>.

## 💡 Example

```matlab
R = bitget(uint8([1 2 3]), 1)
```

## 🔗 See also

[bitand](../operators/bitand.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
