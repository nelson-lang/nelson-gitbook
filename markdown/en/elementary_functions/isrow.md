# isrow

Determine whether input is row vector.

## 📝 Syntax

- tf = isrow(V)

## 📥 Input argument

- V - a variable

## 📤 Output argument

- tf - logical: result of 'isrow'.

## 📄 Description

<b>isrow(V)</b> returns logical<b>true</b> if size(V) returns [1, n] with a nonnegative integer value n, and logical<b>false</b> otherwise.

## 💡 Example

```matlab
isrow([1:4])
isrow([1:4]')
```

## 🔗 See also

[iscolumn](../elementary_functions/iscolumn.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
