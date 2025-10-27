# NaN

Creates an Not-a-Number

## 📝 Syntax

- NaN
- nan
- NaN(n)
- NaN(n, m)

## 📥 Input argument

- n - a variable: n-by-n matrix
- m - a variable: n-by-m matrix

## 📄 Description

<b>NaN</b> returns the IEEE symbol NaN (Not a Number).

<b>NaN</b> is the result of operations which do not produce a well defined numerical result.

Beware, you must never compare <b>NaN</b> with <b>NaN</b>, in this case, please use <b>isnan</b>.

## 💡 Examples

```matlab
NaN
```

```matlab
3 + NaN
```

```matlab
NaN != NaN
isnan(NaN)
```

## 🔗 See also

[isnan](../types/isnan.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
