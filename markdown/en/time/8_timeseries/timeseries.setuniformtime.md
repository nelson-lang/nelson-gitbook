# timeseries.setuniformtime

Set a uniformly spaced time vector.

## 📝 Syntax

- tsOut = setuniformtime(ts, 'StartTime', startTime, 'Interval', step, 'Length', n)

## 📥 Input argument

- ts - Input timeseries object.
- startTime - First sample time.
- step - Uniform spacing between samples.
- n - Number of samples.

## 📤 Output argument

- tsOut - Output timeseries object with a uniformly spaced time vector.

## 📄 Description

<b>setuniformtime</b> Generates a uniform time vector from name-value settings and assigns it to the object.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3; 4]);
ts = setuniformtime(ts, 'StartTime', 0, 'Interval', 2, 'Length', 4);
ts.Time

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
