# timeseries.set

Set timeseries property values.

## 📝 Syntax

- tsOut = set(ts, 'PropertyName', value)
- tsOut = set(ts, 'Name1', value1, 'Name2', value2)

## 📥 Input argument

- ts - Timeseries object.
- PropertyName - Property to set, such as Name, Data, Time, DataInfo, TimeInfo, or UserData.
- value - New property value.

## 📤 Output argument

- tsOut - Output timeseries object with the updated properties.

## 📄 Description

<b>set</b> Returns a copy of the timeseries object with one or more properties changed.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ts = set(ts, 'Name', 'velocity');
ts.Name

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
