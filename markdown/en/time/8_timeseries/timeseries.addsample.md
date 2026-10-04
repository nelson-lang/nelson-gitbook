# timeseries.addsample

Add one sample to a timeseries object.

## 📝 Syntax

- tsOut = addsample(ts, 'Time', t, 'Data', x)
- tsOut = addsample(ts, 'Time', t, 'Data', x, 'Quality', q)

## 📥 Input argument

- ts - Input timeseries object.
- t - Sample time to append.
- x - Sample data to append.
- q - Optional quality value.

## 📤 Output argument

- tsOut - Output timeseries object with the sample added.

## 📄 Description

<b>addsample</b> Appends a sample using name-value pairs. Existing sample order is preserved by the append operation.

## 💡 Example

```matlab
ts = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts = addsample(ts, 'Time', 12, 'Data', 3);
ts.Time

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
