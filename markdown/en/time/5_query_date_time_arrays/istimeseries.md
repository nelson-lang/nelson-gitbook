# istimeseries

Determine whether input is a timeseries object.

## 📝 Syntax

- tf = istimeseries(value)

## 📥 Input argument

- value - Input value.

## 📤 Output argument

- tf - Logical result.

## 📄 Description

<b>istimeseries</b> returns true when the input is a timeseries object.

## 💡 Example

```matlab
ts = timeseries([1; 2], [10; 11]);
istimeseries(ts)

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
