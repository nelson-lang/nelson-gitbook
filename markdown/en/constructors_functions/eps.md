# eps

Creates an epsilon (machine precision)

## 📝 Syntax

- eps
- eps
- eps(n)
- eps(n, m)
- eps('double')
- eps('single')

## 📥 Input argument

- n - a variable: n-by-n matrix
- m - a variable: n-by-m matrix

## 📄 Description

<b>eps</b> returns the machine precision 2^(-52) for double and 2^(-23) for single.

eps(Inf), eps(-Inf) and eps(NaN) return NaN.

## 💡 Examples

```matlab
eps
```

```matlab
eps('double')
```

```matlab
eps('single')
```

## 🔗 See also

[double](../double/double.md), [single](../single/single.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
