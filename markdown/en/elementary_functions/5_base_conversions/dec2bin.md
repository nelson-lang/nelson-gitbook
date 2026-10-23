# dec2bin

Convert decimal number to base 2.

## 📝 Syntax

- R = dec2bin(D)
- R = dec2bin(D, N)

## 📥 Input argument

- D - a non negative integer smaller than the value returned by flintmax, or a negative value of a signed integer class (int8, int16, int32, int64).
- N - an integer value. number of digits.

## 📤 Output argument

- R - result of dec2bin: char array.

## 📄 Description


<b>dec2bin</b> converts decimal number to base 2. 

A negative value of a signed integer class is converted using the two's complement representation over the native bit width of the type (8, 16, 32 or 64 bits), so <b>dec2bin(int8(-1))</b> returns <b>'11111111'</b>.

## 💡 Examples



```matlab
Y = dec2bin(2)
```


```matlab
Y = dec2bin(int8(-92), 8)
```


## 🔗 See also

[dec2base](../../elementary_functions/5_base_conversions/base2dec.md), [bin2dec](../../elementary_functions/5_base_conversions/bin2dec.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
