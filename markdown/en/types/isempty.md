# isempty

Return true if variable var is an empty matrix.

## 📝 Syntax

- res = isempty(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>isempty</b> returns a logical true if the argument is an empty matrix.

Any one of its dimensions is zero.

## 💡 Examples

```matlab
A = rand(3, 3, 3);
res = isempty(A)
A(:, :, :) = [];
res = isempty(A)

```

```matlab
B = {};
res = isempty(B)
C = struct()
res = isempty(C)
C = struct([])
res = isempty(C)
```

## 🔗 See also

[class](../types/class.md), [isstruct](../integer/isstruct.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
