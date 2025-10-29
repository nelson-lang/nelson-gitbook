# datevec

Convert a serial date number into a date vector.

## 📝 Syntax

- [Y, M, D, H, MN, S] = datevec(dv)
- V = datevec(dv)

## 📥 Input argument

- dv - a scalar, vector, or multidimensional array e: a serial date number.

## 📤 Output argument

- Y, M, D, H, MN, S - double: Year, Month, Day, Hour, Minutes, Seconds.
- V - a vector of double: [Year, Month, Day, Hour, Minutes, Seconds].

## 📄 Description

<b>datevec</b> converts a serial date number into a date vector.

To measure performance, it is better to use tic and toc functions.

## 💡 Example

```matlab
datevec(now())
datevec(720840)
V = datevec([720840, now()])
[Y, M, D, H, MN, S] = datevec([720840, now()])

```

## 🔗 See also

[tic](../time/tic.md), [toc](../time/toc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
