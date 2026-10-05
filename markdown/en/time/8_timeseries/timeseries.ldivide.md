# timeseries.ldivide

Element-wise left division of timeseries data.

## 📝 Syntax

- tsOut = ldivide(a, b)
- tsOut = a .\\ b

## 📥 Input argument

- a - Left timeseries object or scalar.
- b - Right timeseries object or scalar.

## 📤 Output argument

- tsOut - Resulting timeseries object.

## 📄 Description


<b>ldivide</b> Applies element-wise left division and preserves the time axis from a timeseries input.

## 💡 Example


```matlab
ts = timeseries([10; 20], [1; 2]);
out = 10 .\ ts;
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
