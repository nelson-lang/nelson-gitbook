# timeseries.gettsbeforeevent

Return samples before an event.

## 📝 Syntax

- tsOut = gettsbeforeevent(ts, eventName)

## 📥 Input argument

- ts - Input timeseries object.
- eventName - Name of an event in ts.Events.

## 📤 Output argument

- tsOut - Output timeseries object containing the selected samples.

## 📄 Description


<b>gettsbeforeevent</b> Finds the named event and keeps samples whose time is less than the event time.

## 💡 Example


```matlab
ts = timeseries([1; 2; 3], [10; 11; 12]);
ts = addevent(ts, tsdata.event('middle', 11));
gettsbeforeevent(ts, 'middle').Data

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
