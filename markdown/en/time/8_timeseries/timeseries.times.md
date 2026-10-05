# timeseries.times

Element-wise multiplication of timeseries data.

## 📝 Syntax

- tsOut = times(a, b)
- tsOut = a .\* b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description


<b>times</b> Multiplies data values element by element and preserves the time axis from a timeseries input.

## 💡 Example


```matlab
ts = timeseries([1; 2], [1; 2]);
out = ts .* 10;
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
