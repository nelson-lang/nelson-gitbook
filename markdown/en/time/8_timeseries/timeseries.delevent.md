# timeseries.delevent

Delete an event from a timeseries object.

## 📝 Syntax

- tsOut = delevent(ts, eventName)

## 📥 Input argument

- ts - Input timeseries object.
- eventName - Name of the event to remove.

## 📤 Output argument

- tsOut - Output timeseries object with the event removed.

## 📄 Description

<b>delevent</b> Removes matching named events from the Events list.

## 💡 Example

```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
ts = delevent(ts, 'middle');
numel(ts.Events)

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
