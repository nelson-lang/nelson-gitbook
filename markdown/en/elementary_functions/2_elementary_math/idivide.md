# idivide

Integer division with rounding option.

## 📝 Syntax

- C = idivide(A, B)
- C = idivide(A, B, opt)

## 📥 Input argument

- A, B - integer arrays (at least one must be of an integer class).
- opt - rounding rule: 'fix' (default), 'round', 'floor' or 'ceil'.

## 📤 Output argument

- C - integer division result.

## 📄 Description


<b>idivide(A, B)</b> divides <b>A</b> by <b>B</b> and rounds the result toward zero (<b>'fix'</b>), keeping the integer class of the inputs. 

Use <b>opt</b> to select another rounding rule: <b>'round'</b>, <b>'floor'</b> or <b>'ceil'</b>.

## 💡 Example



```matlab
idivide(int32(7), int32(2))
idivide(int32(7), int32(2), 'ceil')
```


## 🔗 See also

[mod](../../elementary_functions/2_elementary_math/mod.md), [rem](../../elementary_functions/2_elementary_math/rem.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
