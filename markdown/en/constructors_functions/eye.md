# eye

Creates an identity matrix.

## 📝 Syntax

- R = eye
- R = eye(n)
- R = eye(n, m)
- R = eye(n, m, ..., z)
- R = eye(n, m, ..., z, 'like', V)
- R = eye(n, m, ..., z, classname)

## 📥 Input argument

- n - a variable: n-by-n matrix
- m - a variable: n-by-m matrix

## 📄 Description

<b>eye</b> returns an identity matrix.

## 💡 Examples

```matlab
eye(3)
```

```matlab
eye(3,1,3,'single')
```

```matlab
A = single([3 3])
B = eye(2,4,'like', A)
```

```matlab
A = eye(0, 4)
```

## 🔗 See also

[ones](../constructors_functions/ones.md), [zeros](../constructors_functions/zeros.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
