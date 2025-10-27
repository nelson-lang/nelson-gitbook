# xor

Exclusive or.

## 📝 Syntax

- R = xor(V1, V2)
- R = xor(V1, V2, ... , VN)

## 📥 Input argument

- V1 - a matrix.
- V2 - a matrix, same dimensions than V1.
- VN - a matrix, same dimensions than V1.

## 📤 Output argument

- R - a logical matrix.

## 📄 Description

<b>xor</b> performs a logical exclusive-OR.

## 💡 Example

```matlab
x = [0 1 0 1];
y = [0 0 1 1];
R = xor(x, y)
```

## 🔗 See also

[or](../elementary_functions/or.md), [and](../elementary_functions/and.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
