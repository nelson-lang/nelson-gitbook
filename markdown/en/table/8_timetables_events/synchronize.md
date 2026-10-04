# synchronize

Synchronize timetables to common row times.

## 📝 Syntax

- TT = synchronize(TT1, TT2)
- TT = synchronize(TT1, TT2, newTimeBasis, method)
- TT = synchronize(TT1, TT2, newTimes, method)
- TT = synchronize(TT1, TT2, 'regular', method, 'TimeStep', dt)

## 📥 Input argument

- TT1, TT2 - Input timetables.
- newTimeBasis - 'union', 'intersection', 'first', or 'last'.
- method - Method used to retime each input timetable.

## 📤 Output argument

- TT - Synchronized timetable.

## 📄 Description

<b>synchronize</b> combines timetables and aligns their variables to common row times.

Supported time bases include union, intersection, first, last, regular time grids, named time steps, and explicit time vectors.

The retiming method is passed to <b>retime</b>, including fill, nearest-neighbor, interpolation, and aggregation methods.

## 💡 Example

```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT1 = timetable(t, [1; 2], 'VariableNames', {'A'});
TT2 = timetable(t, [10; 20], 'VariableNames', {'B'});
TT = synchronize(TT1, TT2)
```

## 🔗 See also

[retime](../../table/retime.md), [timetable](../../table/timetable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
