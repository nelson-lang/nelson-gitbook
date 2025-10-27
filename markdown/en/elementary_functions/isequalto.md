# isequalto

Return true if all arguments x1, x2, ... , xn are equal (same type, same dimensions, same values or NaNs).

## 📝 Syntax

- res = isequalto(x1, x2)
- res = isequalto(x1, x2, xn)

## 📥 Input argument

- x1 - a value
- x2 - a value
- xn - a value

## 📤 Output argument

- res - a logical value

## 📄 Description

<b>isequalto</b> returns true if x1 and x2 are the same type, same size and same values; otherwise, it returns false.

## 💡 Example

```matlab
A = eye(3, 3);
res = isequal(A, single(A))
res = isequalto(A, single(A))

```

## 🔗 See also

[isequal](../elementary_functions/isequal.md), [isequaln](../elementary_functions/isequaln.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
