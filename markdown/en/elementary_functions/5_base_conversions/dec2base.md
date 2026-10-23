# dec2base

Convert decimal number to another base.

## 📝 Syntax

- R = dec2base(D, B)
- R = dec2base(D, B, N)

## 📥 Input argument

- D - a nonnegative integer smaller than the value returned by flintmax, or a negative value of a signed integer class (int8, int16, int32, int64).
- B - an integer value [2, 36].
- N - an integer value. number of digits.

## 📤 Output argument

- R - result of dec2base: char array.

## 📄 Description


<b>dec2base</b> converts decimal number to another base. 

values are cached to speed up next computation<b>dec2base([], 2)</b> to clear cache. 

A negative value of a signed integer class is converted using the two's complement representation over the native bit width of the type (8, 16, 32 or 64 bits), so <b>dec2base(int8(-1), 16)</b> returns <b>'FF'</b>.

## 💡 Examples



```matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)

```


```matlab
Y = dec2base(int8(-1), 16)
```


## 🔗 See also

[base2dec](../../elementary_functions/5_base_conversions/base2dec.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
