# timeseries.setabstime

Set the absolute start date for sample times.

## 📝 Syntax

- tsOut = setabstime(ts, startDate)

## 📥 Input argument

- ts - Input timeseries object.
- startDate - Date string used as the absolute time origin.

## 📤 Output argument

- tsOut - Output timeseries object with the absolute start date set.

## 📄 Description


<b>setabstime</b> Stores an absolute start date in TimeInfo. Numeric sample times remain relative to that start date.

## 💡 Example


```matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
ts.TimeInfo.StartDate

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
