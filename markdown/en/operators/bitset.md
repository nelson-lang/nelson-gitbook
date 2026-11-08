# bitset

Set bit at a specified position.

## 📝 Syntax

- r = bitset(A, pos)
- r = bitset(A, pos, val)

## 📥 Input argument

- A - an integer array.
- pos - the bit position (1 is the least significant bit).
- val - the bit value, <b>0</b> or <b>1</b> (default <b>1</b>).

## 📤 Output argument

- r - <b>A</b> with the bit at <b>pos</b> set to <b>val</b>.

## 📄 Description


<b>r = bitset(A, pos)</b> sets the bit at position <b>pos</b> of <b>A</b> to <b>1</b>. 

<b>r = bitset(A, pos, val)</b> sets that bit to <b>val</b>.

## 💡 Example



```matlab
bitset(uint8(0), 3)
```


## 🔗 See also

[bitget](../operators/bitget.md), [bitand](../operators/bitand.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
