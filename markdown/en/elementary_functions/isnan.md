# isnan

Check for Not a Number entries.

## 📝 Syntax

- tf = isnan(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- tf - logical: result of 'isnan'.

## 📄 Description

<b>isnan</b> returns a logical array which is true where elements of M are "Not a Number" values.

## 💡 Example

```matlab
isnan(pi)
isnan(NaN)
isnan(int32(3))
X = sparse([1 2 NaN 3 0 NaN 0 4]);
R = isnan(X)
```

## 🔗 See also

[isinf](../elementary_functions/isinf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
