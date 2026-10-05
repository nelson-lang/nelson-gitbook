# timeseries.getinterpmethod

Return the interpolation method name.

## 📝 Syntax

- method = getinterpmethod(ts)

## 📥 Input argument

- ts - Input timeseries object.

## 📤 Output argument

- method - Interpolation method name.

## 📄 Description


<b>getinterpmethod</b> Reads the interpolation method stored in ts.DataInfo.Interpolation.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'nearest');
getinterpmethod(ts)

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
