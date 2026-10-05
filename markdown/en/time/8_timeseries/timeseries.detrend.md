# timeseries.detrend

Remove a trend from timeseries data.

## 📝 Syntax

- tsOut = detrend(ts)
- tsOut = detrend(ts, 'constant')

## 📥 Input argument

- ts - Input timeseries object.
- option - Optional detrend mode.

## 📤 Output argument

- tsOut - Detrended timeseries object.

## 📄 Description


<b>detrend</b> Applies detrend to the numeric data and preserves the time axis and metadata.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [1; 2; 3]);
ts = detrend(ts, 'constant');
ts.Data

```


## 🔗 See also

[timeseries](../../time/8_timeseries/timeseries.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
