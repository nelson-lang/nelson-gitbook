# tscollection

Create a collection of aligned time series.

## 📝 Syntax

- tsc = tscollection(time)
- tsc = tscollection(ts)
- tsc = tscollection({ts1; ts2; ...})
- tsc = tscollection(..., 'Name', name)

## 📥 Input argument

- time - Shared time vector.
- ts - Initial timeseries member.
- {ts1; ts2; ...} - Cell array of timeseries members.

## 📤 Output argument

- tsc - A tscollection object.

## 📄 Description

<b>tscollection</b> groups named timeseries objects on a shared time vector.

Members can be added, removed, resampled, selected by time, and accessed by name.

## 💡 Examples

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
gettimeseriesnames(tsc)

```

```matlab
ts1 = timeseries([1.1 2.9 3.7 4.0 3.0]', 1:5, 'Name', 'Acceleration');
ts2 = timeseries([3.2 4.2 6.2 8.5 1.1]', 1:5, 'Name', 'Speed');
tsc = tscollection({ts1; ts2});
gettimeseriesnames(tsc)

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
