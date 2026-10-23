# dec2hex

Convert decimal number to base 16.

## 📝 Syntax

- R = dec2hex(D)
- R = dec2hex(D, N)

## 📥 Input argument

- D - a non negative integer smaller than the value returned by flintmax, or a negative value of a signed integer class (int8, int16, int32, int64).
- N - an integer value. number of digits.

## 📤 Output argument

- R - result of dec2hex: char array.

## 📄 Description


<b>dec2hex</b> converts decimal number to base 16. 

A negative value of a signed integer class is converted using the two's complement representation over the native bit width of the type (8, 16, 32 or 64 bits), so <b>dec2hex(int8(-1))</b> returns <b>'FF'</b>.

## 💡 Examples



```matlab
Y = dec2hex(12)
```


```matlab
Y = dec2hex(int8(-92))
```


## 🔗 See also

[dec2base](../../elementary_functions/5_base_conversions/base2dec.md), [hex2dec](../../elementary_functions/5_base_conversions/hex2dec.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
