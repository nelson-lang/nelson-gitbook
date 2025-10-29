# cumprod

Cumulative product of array elements.

## 📝 Syntax

- R = cumprod(M)
- R = cumprod(M, d)
- R = cumprod(M, d, direction)
- R = cumprod(M, d, direction, nanflag)

## 📥 Input argument

- M - an array of double, single, integers, ...
- d - dimension to operate along: positive integer scalar.
- direction - a string: 'reverse', 'forward' (default).
- nanflag - a string: 'includenan' (default) or 'omitnan'.

## 📤 Output argument

- R - Cumulative Product of array elements.

## 📄 Description

<b>R = cumprod(M)</b> returns the cumulative product of the array elements of M.

## 💡 Example

```matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = cumprod(M)
R = cumprod(M, 'reverse')
```

## 🔗 See also

[ndims](../data_analysis/ndims.md), [prod](../data_analysis/prod.md), [cumsum](../data_analysis/cumsum.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
