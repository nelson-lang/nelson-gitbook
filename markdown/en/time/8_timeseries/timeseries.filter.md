# timeseries.filter

Filter timeseries data.

## 📝 Syntax

- tsOut = filter(ts, b, a)

## 📥 Input argument

- ts - Input timeseries object.
- b - Numerator filter coefficients.
- a - Denominator filter coefficients.

## 📤 Output argument

- tsOut - Filtered output timeseries object.

## 📄 Description

<b>filter</b> Runs filter on the data values and preserves time, name, events, and metadata.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = filter(ts, [1 1] / 2, 1);
ts.Data

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
