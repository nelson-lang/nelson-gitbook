# timeseries.plus

Add timeseries data.

## 📝 Syntax

- tsOut = plus(a, b)
- tsOut = a + b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description

<b>plus</b> Adds data values and preserves the time axis from a timeseries input.

## 💡 Example

```matlab
a = timeseries([1; 2], [1; 2]);
b = timeseries([10; 20], [1; 2]);
out = a + b;
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
