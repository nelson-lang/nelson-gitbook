# timeseries.uminus

Negate timeseries data.

## 📝 Syntax

- tsOut = uminus(ts)
- tsOut = -ts

## 📥 Input argument

- ts - Input timeseries object.

## 📤 Output argument

- tsOut - Output timeseries object with negated data values.

## 📄 Description


<b>uminus</b> Negates the Data property and preserves time and metadata.

## 💡 Example


```matlab
ts = timeseries([1; -2], [1; 2]);
out = -ts;
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
