# timeseries

Create time series data.

## 📝 Syntax

- ts = timeseries(data)
- ts = timeseries(data, time)
- ts = timeseries(data, time, quality)
- ts = timeseries(data, time, 'Name', name)

## 📥 Input argument

- data - Sample data.
- time - Numeric, duration, datetime, or date text sample times.
- quality - Optional quality values.

## 📤 Output argument

- ts - A timeseries object.

## 📄 Description


<b>timeseries</b> stores sampled data, sample times, optional quality values, metadata, and events. 

Methods provide sample selection, event selection, interpolation, synchronization, statistics, arithmetic, plotting, and conversion to timetable.

## 💡 Example


```matlab
x = [-0.2 -0.3 13; -0.1 -0.4 15; NaN 2.8 17; 0.5 0.3 NaN; -0.3 -0.1 15];
tsPosition = timeseries(x(:, 1:2), (1:5)', 'Name', 'Position');
getdatasamplesize(tsPosition)

```


## 🔗 See also

[tscollection](../../time/8_timeseries/tscollection.md), [istimeseries](../../time/5_query_date_time_arrays/istimeseries.md), [timeseries2timetable](../../table/1_create_convert_tables/timeseries2timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
