# tscollection.loadobj

Restore a time series collection object from saved data.

## 📝 Syntax

- tsc = tscollection.loadobj(value)

## 📥 Input argument

- value - A tscollection object or a structure containing collection storage fields.

## 📤 Output argument

- tsc - A tscollection object.

## 📄 Description


<b>tscollection.loadobj</b> rebuilds a collection from an object or saved structure.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
tsc = tscollection(ts, 'Name', 'run');
state = struct(tsc);
copy = tscollection.loadobj(state);
gettimeseriesnames(copy)

```


## 🔗 See also

[tscollection](../../time/8_timeseries/tscollection.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
