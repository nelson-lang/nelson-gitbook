# tscollection.setTimeseriesName

Time series object function.

## 📝 Syntax

- setTimeseriesName(...)

## 📄 Description


<b>setTimeseriesName</b> operates on timeseries or tscollection objects.

## 💡 Example


```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc = setTimeseriesName(tsc, 'Intersection1', 'NorthRoad');
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
