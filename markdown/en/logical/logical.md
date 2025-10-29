# logical

Converts a numeric value to logical type.

## 📝 Syntax

- Y = logical(X)

## 📥 Input argument

- X - a numeric value.

## 📤 Output argument

- Y - a logical value.

## 📄 Description

<b>logical</b> converts a numeric value to logical type.

Nonzero value converted to true and zeros values converted to false.

Complex numbers returns an error.

## 💡 Example

```matlab
A = eye(2, 2)
B = logical(A)
islogical(B)
```

## 🔗 See also

[islogical](../types/islogical.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
