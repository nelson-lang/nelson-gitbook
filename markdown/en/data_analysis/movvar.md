# movvar

Moving variance.

## 📝 Syntax

- R = movvar(A, window)
- R = movvar(A, window, d)
- R = movvar(..., nanflag)
- R = movvar(..., 'Endpoints', endpoints)
- [R, M] = movvar(...)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving variance.
- M - Moving mean computed over the same windows as R (same size as R; a timetable for a timetable input).

## 📄 Description

<b>movvar</b> computes variances over a centered moving window.

## 💡 Examples

```matlab
A = [1 2 8 4 5];
R = movvar(A, 3)
```

Moving variance and moving mean

```matlab
A = [4 8 6 -1 -2 -3 -1 3 4 5];
[R, M] = movvar(A, 3)
```

## 🔗 See also

[var](../statistics/var.md).

## 🕔 History

| Version | 📄 Description                         |
| ------- | -------------------------------------- |
| 2.0.0   | initial version                        |
| 2.0.0   | moving mean returned as second output. |

<!--
## 👤 Author

Allan CORNET
-->
