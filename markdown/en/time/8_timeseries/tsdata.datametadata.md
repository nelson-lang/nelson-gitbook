# tsdata.datametadata

Time series object function.

## 📝 Syntax

- datametadata(...)

## 📄 Description

<b>datametadata</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count1.DataInfo.Units = 'cars';
count1.DataInfo.Interpolation = tsdata.interpolation('zoh');
count1.DataInfo

```

## 🔗 See also

[timeseries](../../time/timeseries.md), [tscollection](../../time/tscollection.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
