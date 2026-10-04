# tscollection.setabstime

Time series helper function.

## 📝 Syntax

- setabstime(...)

## 📄 Description

<b>setabstime</b> operates on timeseries or tscollection objects.

## 💡 Example

```matlab
count1 = timeseries([11; 7; 14; 11], (1:4)', 'Name', 'Intersection1');
count2 = timeseries([9; 8; 12; 16], (1:4)', 'Name', 'Intersection2');
tsc = tscollection(count1, 'Name', 'count_coll');
tsc = addts(tsc, count2);
tsc = setabstime(tsc, '01-Jan-2024');
tsc.TimeInfo.StartDate

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
