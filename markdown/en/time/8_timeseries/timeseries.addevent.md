# timeseries.addevent

Add an event to a timeseries object.

## 📝 Syntax

- tsOut = addevent(ts, eventObj)

## 📥 Input argument

- ts - Input timeseries object.
- eventObj - Event created with tsdata.event.

## 📤 Output argument

- tsOut - Output timeseries object with the event added.

## 📄 Description


<b>addevent</b> Adds a named event to the Events list of a timeseries object. Event times use the same time axis as the series.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
ev = tsdata.event('middle', 11);
ts = addevent(ts, ev);
ts.Events(1).Name

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
