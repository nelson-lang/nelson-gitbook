# timeseries.idealfilter

Apply an ideal frequency-domain filter to timeseries data.

## 📝 Syntax

- tsOut = idealfilter(ts, band)

## 📥 Input argument

- ts - Input timeseries object.
- band - Two-element frequency band.

## 📤 Output argument

- tsOut - Filtered output timeseries object.

## 📄 Description

<b>idealfilter</b> Filters numeric data using the requested ideal frequency band and preserves the time axis.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts2 = idealfilter(ts, [0 1]);
size(ts2.Data)

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
