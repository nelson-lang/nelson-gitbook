# movstd

Moving standard deviation.

## 📝 Syntax

- R = movstd(A, window)
- R = movstd(A, window, d)
- R = movstd(..., nanflag)
- R = movstd(..., 'Endpoints', endpoints)
- [R, M] = movstd(...)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving standard deviation.
- M - Moving mean computed over the same windows as R (same size as R; a timetable for a timetable input).

## 📄 Description

<b>movstd</b> computes standard deviations over a centered moving window.

## 💡 Examples

```matlab
A = [1 2 8 4 5];
R = movstd(A, 3)
```

Moving standard deviation and moving mean

```matlab
A = [4 8 6 -1 -2 -3 -1 3 4 5];
[R, M] = movstd(A, 3)
```

## 🔗 See also

[std](../statistics/std.md).

## 🕔 History

| Version | 📄 Description                         |
| ------- | -------------------------------------- |
| 2.0.0   | initial version                        |
| 2.0.0   | moving mean returned as second output. |

<!--
## 👤 Author

Allan CORNET
-->
