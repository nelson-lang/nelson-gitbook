# timeseries.get

Get a timeseries property value.

## 📝 Syntax

- value = get(ts, 'PropertyName')
- values = get(ts)

## 📥 Input argument

- ts - Timeseries object.
- PropertyName - Name of the property to query, such as Name, Data, Time, DataInfo, or Events.

## 📤 Output argument

- value - Requested property value.
- values - Structure containing public property values.

## 📄 Description

<b>get</b> Returns the value of a named timeseries property. Calling get with only the object returns the public property set.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
name = get(ts, 'Name')
time = get(ts, 'Time')

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
