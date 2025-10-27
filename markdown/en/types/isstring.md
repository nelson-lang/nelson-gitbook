# isstring

Return true if variable var is a string array.

## 📝 Syntax

- res = isstring(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>isstring</b> returns a logical 1 if the argument is a string array and a logical 0 otherwise.

## 💡 Examples

```matlab
A = 3;
res = isstring(A)
```

```matlab
B = "NelSon";
res = isstring(B)
```

```matlab
C = [1 ; 3];
res = isstring(C)
```

## 🔗 See also

[class](../types/class.md), [string](../string/string.md), [ischar](../types/ischar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
