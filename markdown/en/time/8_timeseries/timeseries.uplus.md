# timeseries.uplus

Unary plus for timeseries data.

## 📝 Syntax

- tsOut = uplus(ts)
- tsOut = +ts

## 📥 Input argument

- ts - Input timeseries object.

## 📤 Output argument

- tsOut - Output timeseries object with unchanged data values.

## 📄 Description

<b>uplus</b> Returns a timeseries with unchanged data.

## 💡 Example

```matlab
ts = timeseries([1; 2], [1; 2]);
out = +ts;
out.Data

```

## 🔗 See also

[timeseries](../../time/timeseries.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
