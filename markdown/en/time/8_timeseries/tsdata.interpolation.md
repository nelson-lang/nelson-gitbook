# tsdata.interpolation

Time series object function.

## 📝 Syntax

- interpolation(...)

## 📄 Description


<b>interpolation</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example


```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1 = setinterpmethod(count1, 'zoh');
getinterpmethod(count1)

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
