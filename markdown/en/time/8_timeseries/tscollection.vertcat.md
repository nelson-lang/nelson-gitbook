# tscollection.vertcat

Time series object function.

## 📝 Syntax

- vertcat(...)

## 📄 Description


<b>vertcat</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example


```matlab
ts1 = timeseries([1], [10], 'Name', 'speed');
ts2 = timeseries([2], [11], 'Name', 'speed');
tsc = [tscollection(ts1); tscollection(ts2)];
tsc.Time

```


## 🔗 See also

[timeseries](../../time/8_timeseries/timeseries.md), [tscollection](../../time/8_timeseries/tscollection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
