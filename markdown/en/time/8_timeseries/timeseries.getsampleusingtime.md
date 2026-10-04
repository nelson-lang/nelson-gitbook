# timeseries.getsampleusingtime

Return samples selected by time.

## 📝 Syntax

- tsOut = getsampleusingtime(ts, t)
- tsOut = getsampleusingtime(ts, t1, t2)

## 📥 Input argument

- ts - Input timeseries object.
- t - Exact sample time.
- t1 - Start time.
- t2 - End time.

## 📤 Output argument

- tsOut - Timeseries with the selected samples.

## 📄 Description

<b>getsampleusingtime</b> Selects samples at exact times or in a closed time interval.

## 💡 Example

```matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
ts2 = getsampleusingtime(ts, 2, 3);
ts2.Data

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
