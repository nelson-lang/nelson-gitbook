# timeseries.gettsatevent

Return samples at an event time.

## 📝 Syntax

- tsOut = gettsatevent(ts, eventName)

## 📥 Input argument

- ts - Input timeseries object.
- eventName - Name of an event in ts.Events.

## 📤 Output argument

- tsOut - Output timeseries object containing the selected samples.

## 📄 Description

<b>gettsatevent</b> Finds the named event and keeps samples whose time equals the event time.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsatevent(ts, 'middle').Data

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
