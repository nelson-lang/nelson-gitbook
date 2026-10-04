# retime

Adjust timetable data to new row times.

## 📝 Syntax

- TT2 = retime(TT1, newTimes)
- TT2 = retime(TT1, newTimes, method)
- TT2 = retime(TT1, newTimeStep, method)
- TT2 = retime(TT1, 'regular', method, 'TimeStep', dt)
- TT2 = retime(TT1, 'regular', method, 'SampleRate', Fs)

## 📥 Input argument

- TT1 - Input timetable.
- newTimes - New datetime or duration row times.
- newTimeStep - Named regular time step such as 'daily', 'hourly', or 'secondly'.
- method - Fill, nearest-neighbor, interpolation, or aggregation method.

## 📤 Output argument

- TT2 - Retimed timetable.

## 📄 Description

<b>retime</b> returns a timetable whose row times match <b>newTimes</b> or a regular time grid.

Supported fill and nearest-neighbor methods include fillwithmissing, fillwithconstant, nearest, previous, and next.

Supported numeric interpolation methods include linear, spline, pchip, and makima. Supported aggregation methods include sum, mean, min, max, median, prod, count, firstvalue, and lastvalue.

## 💡 Example

```matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [1; 3; 5]);
TT2 = retime(TT, t(1):days(1):t(3), 'nearest')
```

## 🔗 See also

[synchronize](../../table/synchronize.md), [timetable](../../table/timetable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
