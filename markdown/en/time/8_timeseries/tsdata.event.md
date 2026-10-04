# tsdata.event

Time series object function.

## 📝 Syntax

- event(...)

## 📄 Description

<b>event</b> operates on timeseries, tscollection, or tsdata metadata objects.

## 💡 Example

```matlab
morning = tsdata.event('AMCommute', 2);
morning.Units = 'hours';
morning.Time

```

## 🔗 See also

[timeseries](../../time/timeseries.md), [tscollection](../../time/tscollection.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
