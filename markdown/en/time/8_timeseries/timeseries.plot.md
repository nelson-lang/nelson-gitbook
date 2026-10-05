# timeseries.plot

Plot timeseries data against time.

## 📝 Syntax

- h = plot(ts)
- h = plot(ax, ts)
- h = plot(ts, lineSpec)

## 📥 Input argument

- ts - Input timeseries object.
- ax - Optional target axes.
- lineSpec - Optional line style or graphics arguments.

## 📤 Output argument

- h - Graphics handle to the plotted line or stairs object.

## 📄 Description


<b>plot</b> Plots sample time on the x-axis and timeseries data on the y-axis. Zero-order hold interpolation uses stair-step drawing.

## 💡 Example


```matlab
f = figure();
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
h = plot(ts);

```


## 🔗 See also

[timeseries](../../time/8_timeseries/timeseries.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
