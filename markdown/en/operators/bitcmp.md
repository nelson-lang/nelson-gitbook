# bitcmp

Bitwise complement.

## 📝 Syntax

- r = bitcmp(A)
- r = bitcmp(A, assumedtype)

## 📥 Input argument

- A - an integer array, or a double with nonnegative integer values.
- assumedtype - an integer class name used to interpret a double <b>A</b>.

## 📤 Output argument

- r - the bitwise complement of <b>A</b>.

## 📄 Description


<b>r = bitcmp(A)</b> returns the bitwise complement of <b>A</b>, where the width is given by the integer class of <b>A</b>. 

When <b>A</b> is a double, pass <b>assumedtype</b> (for example <b>'uint8'</b>) to set the bit width; the result stays double.

## 💡 Example



```matlab
bitcmp(uint8(5))
```


## 🔗 See also

[bitand](../operators/bitand.md), [bitor](../operators/bitor.md), [bitxor](../operators/bitxor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
