# timeseries.mtimes

Matrix multiplication for timeseries data.

## 📝 Syntax

- tsOut = mtimes(a, b)
- tsOut = a \* b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description

<b>mtimes</b> Applies matrix multiplication to data values and preserves the time axis from a timeseries input.

## 💡 Example

```matlab
ts = timeseries([1; 2], [1; 2]);
out = ts * 2;
out.Data

```

## 🔗 See also

[timeseries](../../time/timeseries.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
