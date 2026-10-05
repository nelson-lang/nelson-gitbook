# tsdata.timemetadata

Time series object function.

## 📝 Syntax

- timemetadata(...)

## 📄 Description


<b>timemetadata</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example


```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.TimeInfo.Units = 'hours';
count1.TimeInfo.Units

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
