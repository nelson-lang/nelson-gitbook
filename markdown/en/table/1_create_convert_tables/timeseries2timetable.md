# timeseries2timetable

Convert time series data to timetable.

## 📝 Syntax

- TT = timeseries2timetable(ts)
- TT = timeseries2timetable(ts1, ..., tsN)
- TT = timeseries2timetable(tsArray)

## 📥 Input argument

- ts - Time series data.
- ts1, ..., tsN - Time series sharing the same time vector, TimeInfo Units and TimeInfo StartDate.
- tsArray - Nonempty timeseries array, converted in column order. It must be the only input.

## 📤 Output argument

- TT - Timetable object.

## 📄 Description


<b>timeseries2timetable</b> converts a timeseries object to a timetable. 

Relative numeric times are converted to duration row times. Absolute time metadata is converted to datetime row times. 

Each time series becomes one variable, named after the <b>Name</b> property of the time series, or <b>Data</b> when it is empty. Duplicate names are made unique. To combine time series with different time vectors, convert each one separately and use <b>synchronize</b>.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [0; 1; 2], 'Name', 'speed');
TT = timeseries2timetable(ts)

```


## 🔗 See also

[timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
