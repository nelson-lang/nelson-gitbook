# timeseries.setinterpmethod

Set the interpolation method.

## 📝 Syntax

- tsOut = setinterpmethod(ts, method)

## 📥 Input argument

- ts - Input timeseries object.
- method - Interpolation method: linear, zoh, or nearest.

## 📤 Output argument

- tsOut - Output timeseries object with the interpolation method set.

## 📄 Description


<b>setinterpmethod</b> Updates ts.DataInfo.Interpolation using the requested interpolation method.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3]);
ts = setinterpmethod(ts, 'zoh');
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
