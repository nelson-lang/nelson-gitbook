# isinf

Check for Infinity entries.

## 📝 Syntax

- tf = isinf(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- tf - logical: result of 'isinf'.

## 📄 Description

<b>isnan</b> returns a logical array which is true where elements of M are Infinity values.

## 💡 Example

```matlab
isnan(pi)
isinf(Inf)
isinf(-Inf)
isinf(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isinf(X)
```

## 🔗 See also

[isnan](../elementary_functions/isnan.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
