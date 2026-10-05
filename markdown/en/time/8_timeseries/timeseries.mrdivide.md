# timeseries.mrdivide

Matrix right division for timeseries data.

## 📝 Syntax

- tsOut = mrdivide(a, b)
- tsOut = a / b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description


<b>mrdivide</b> Applies matrix right division to data values and preserves the time axis from a timeseries input.

## 💡 Example


```matlab
ts = timeseries([10; 20], [1; 2]);
out = ts / 10;
out.Data

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
