# datevec

Convert a serial date number into a date vector.

## 📝 Syntax

- [Y, M, D, H, MN, S] = datevec(dv)
- V = datevec(dv)

## 📥 Input argument

- dv - a scalar, vector, multidimensional array, or sparse double matrix: a serial date number.

## 📤 Output argument

- Y, M, D, H, MN, S - double: Year, Month, Day, Hour, Minutes, Seconds.
- V - a vector of double: [Year, Month, Day, Hour, Minutes, Seconds].

## 📄 Description


<b>datevec</b> converts a serial date number into a date vector. 

For sparse input, <b>datevec</b> converts the stored nonzero values and returns dense outputs. 

To measure performance, it is better to use tic and toc functions.

## 💡 Example



```matlab
datevec(now())
datevec(720840)
V = datevec([720840, now()])
[Y, M, D, H, MN, S] = datevec([720840, now()])
V = datevec(sparse([720840, now()]))

```


## 🔗 See also

[tic](../../time/7_timers/tic.md), [toc](../../time/7_timers/toc.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | sparse double input supported natively |

<!--
## 👤 Author

Allan CORNET
-->
