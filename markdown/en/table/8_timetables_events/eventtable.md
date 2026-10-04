# eventtable

Create an event table for a timetable.

## 📝 Syntax

- E = eventtable(eventTimes)
- E = eventtable(TT)
- E = eventtable(\_\_\_, 'EventLabels', labels)
- E = eventtable(\_\_\_, 'EventLengths', lengths)
- E = eventtable(\_\_\_, 'EventEnds', ends)
- E = eventtable(\_\_\_, 'EventLabelsVariable', name)
- E = eventtable(\_\_\_, 'EventLengthsVariable', name)
- E = eventtable(\_\_\_, 'EventEndsVariable', name)

## 📥 Input argument

- eventTimes - Datetime or duration vector containing event start times.
- TT - Timetable whose row times become event times and whose variables become event variables.
- labels - Event labels. A scalar value is expanded to all events.
- lengths - Duration values that specify event lengths.
- ends - Datetime or duration values that specify event end times.
- name - Name or index of a variable of the input timetable that stores event labels, lengths, or end times. Only valid when the first input is a timetable.

## 📤 Output argument

- E - Event table: a timetable whose row times are the event times.

## 📄 Description

<b>eventtable</b> creates an event table that can be attached to a timetable through <b>Properties.Events</b>; <b>syncevents</b> then copies its variables into the timetable.

When the input is a time vector, event labels, lengths, and end times are specified with name-value arguments. Additional event variables are supplied by first creating a timetable and then passing that timetable to <b>eventtable</b>: any positional input after the first one is an error.

An event table is a timetable: the event times are its row times (<b>E.Properties.RowTimes</b>, or <b>E.Time</b>), not a variable, so <b>size</b>, <b>width</b>, indexing and concatenation behave as for a timetable.

<b>E.Properties</b> starts with <b>EventLabelsVariable</b>, <b>EventLengthsVariable</b> and <b>EventEndsVariable</b>, the names of the variables holding the event labels, lengths and end times ([] when unset). They can be assigned a variable name or index, or []. A variable renamed or removed is unset.

Created from event times without labels, the event table gets the labels "Event 1", "Event 2", ... in an <b>EventLabels</b> variable. Created from a timetable, no variable is used as labels unless specified.

## 💡 Examples

```matlab
eventTimes = datetime(2022, 11, [3; 5; 10; 14]);
eventType = {'Hail'; 'Rain'; 'Snow'; 'Rain'};
eventLength = hours([1.2; 36; 18; 20]);
E = eventtable(eventTimes, ...
  'EventLabels', eventType, ...
  'EventLengths', eventLength)

```

```matlab
t = datetime(2022, 11, (1:15)');
temperature = [36; 31; 37; 36; 38; 32; 35; 34; 32; 30; 39; 34; 31; 40; 34];
humidity = [45; 76; 43; 46; 72; 54; 50; 45; 72; 58; 54; 58; 73; 78; 66];
TT = timetable(t, temperature, humidity, 'VariableNames', {'Temperature', 'Humidity'});
eventTimes = t([3; 5; 10; 14]);
eventType = {'Hail'; 'Rain'; 'Snow'; 'Rain'};
eventLength = hours([1.2; 36; 18; 20]);
precipitation = [12.7; 114.3; 25.4; 177.8];
eventData = timetable(eventTimes, eventType, eventLength, precipitation, ...
  'VariableNames', {'EventType', 'EventLength', 'Precipitation'});
E = eventtable(eventData, ...
  'EventLabelsVariable', 'EventType', ...
  'EventLengthsVariable', 'EventLength');
TT.Properties.Events = E;
stackedplot(TT)

```

## 🔗 See also

[timetable](../../table/timetable.md), [syncevents](../../table/syncevents.md), [extractevents](../../table/extractevents.md), [stackedplot](../../graphics/stackedplot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
