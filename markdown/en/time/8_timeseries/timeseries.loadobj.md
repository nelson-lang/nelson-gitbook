# timeseries.loadobj

Restore a timeseries object from saved data.

## 📝 Syntax

- ts = timeseries.loadobj(value)

## 📥 Input argument

- value - A timeseries object or a structure containing timeseries storage fields.

## 📤 Output argument

- ts - A timeseries object.

## 📄 Description


<b>timeseries.loadobj</b> rebuilds a timeseries object from an object or saved structure.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
state = struct(ts);
copy = timeseries.loadobj(state);
copy.Name

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
