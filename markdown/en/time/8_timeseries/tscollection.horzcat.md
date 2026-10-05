# tscollection.horzcat

Time series object function.

## 📝 Syntax

- horzcat(...)

## 📄 Description


<b>horzcat</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example


```matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'a');
ts2 = timeseries([3; 4], [10; 11], 'Name', 'b');
tsc = [tscollection(ts1), tscollection(ts2)];
gettimeseriesnames(tsc)

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
