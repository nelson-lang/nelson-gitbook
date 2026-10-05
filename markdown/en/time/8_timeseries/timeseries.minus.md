# timeseries.minus

Subtract timeseries data.

## 📝 Syntax

- tsOut = minus(a, b)
- tsOut = a - b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description


<b>minus</b> Subtracts data values and preserves the time axis from a timeseries input.

## 💡 Example


```matlab
a = timeseries([10; 20], [1; 2]);
b = timeseries([1; 2], [1; 2]);
out = a - b;
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
