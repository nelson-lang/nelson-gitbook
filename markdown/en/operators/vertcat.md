# vertcat

Vertical concatenation.

## 📝 Syntax

- R = vertcat(M1, M2, ... , MN)
- R = [M1; M2; ... ; MN]

## 📥 Input argument

- M1 - a variable
- M2 - a variable
- MN - a variable

## 📤 Output argument

- R - result of [M1; M2; ... ; MN]

## 📄 Description

<b>R = vertcat(M1, M2, ... , MN)</b> returns the vertical concatenation of M1, M2, ... , MN along the dimension 1.

## 💡 Examples

```matlab
A = eye(2, 2);
B = ones(2, 2);
C = vertcat(A, B)
D = [A; B]
```

```matlab
A = 'nel';
B = 'son';
C = vertcat(A, B)
```

## 🔗 See also

[horzcat](../operators/horzcat.md), [cat](../operators/cat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
