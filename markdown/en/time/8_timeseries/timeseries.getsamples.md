# timeseries.getsamples

Return a timeseries subset by index.

## 📝 Syntax

- tsOut = getsamples(ts, indices)

## 📥 Input argument

- ts - Input timeseries object.
- indices - Sample indices to keep.

## 📤 Output argument

- tsOut - Timeseries subset with the selected samples.

## 📄 Description

<b>getsamples</b> Selects samples and preserves events and metadata.

## 💡 Example

```matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsamples(ts, 2:3);
ts2.Time

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
