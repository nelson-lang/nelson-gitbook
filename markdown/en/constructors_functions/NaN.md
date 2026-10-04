# NaN

Creates an Not-a-Number

## 📝 Syntax

- NaN
- nan
- NaN(n)
- NaN(n, m)
- NaN(n, classname)
- NaN(n, m, classname)
- NaN(classname)

## 📥 Input argument

- n - a scalar integer: number of rows (and columns if m is omitted).
- m - a scalar integer: number of columns.
- classname - a string: 'double' (default) or 'single'.

## 📄 Description

<b>NaN</b> returns the IEEE symbol NaN (Not a Number).

<b>NaN(n)</b> returns an n-by-n matrix filled with <b>NaN</b>; <b>NaN(n, m)</b>returns an n-by-m matrix. The optional <b>classname</b> argument must be <b>'double'</b> (default) or <b>'single'</b>.

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

[isnan](../elementary_functions/isnan.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
