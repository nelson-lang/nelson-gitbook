# extractevents

Extract an event table from rows of a timetable.

## 📝 Syntax

- ET = extractevents(TT, rows)
- ET = extractevents(TT, labels)
- ET = extractevents(..., Name, Value)
- [ET, TT2] = extractevents(...)

## 📥 Input argument

- TT - Input timetable.
- rows - Rows of <b>TT</b>: row numbers, logical mask, row times (datetime or duration), timerange or ':'.
- labels - categorical vector with one element per row of <b>TT</b>: the defined elements are the labels of the events, the rows with <undefined> are not events.
- Name, Value - <b>EventLabels</b>, <b>EventLengths</b>, <b>EventEnds</b>: values (scalar or one per event); <b>EventLabelsVariable</b>, <b>EventLengthsVariable</b>, <b>EventEndsVariable</b>: variable of <b>TT</b> holding them; <b>EventDataVariables</b>: variables of <b>TT</b> copied to the event table; <b>PreserveEventVariables</b>: true to keep these variables in <b>TT2</b> (default false).

## 📤 Output argument

- ET - Event table: the row times of the selected rows and the event variables.
- TT2 - Copy of <b>TT</b> without the variables copied to <b>ET</b>, unless <b>PreserveEventVariables</b> is true.

## 📄 Description

<b>extractevents</b> creates an event table from rows of a timetable. Only the variables named by the options are copied: the event lengths or ends variable first, then the event labels variable, then the data variables, then the variables made from the <b>EventLabels</b>, <b>EventLengths</b> and <b>EventEnds</b> values.

An event variable cannot also be listed in <b>EventDataVariables</b>. <b>PreserveEventVariables</b> requires at least one variable option and the second output.

To read the event table attached to a timetable, use <b>TT.Properties.Events</b>.

## 💡 Examples

```matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], ["a"; "b"; "c"; "d"], 'VariableNames', {'A', 'L'});
ET = extractevents(TT, [2 4], 'EventLabelsVariable', 'L')
[ET, TT2] = extractevents(TT, timerange(seconds(2), seconds(4)), 'EventDataVariables', 'A')

```

```matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
ET = extractevents(TT, categorical(["start"; ""; ""; "stop"]))

```

## 🔗 See also

[syncevents](../../table/syncevents.md), [eventtable](../../table/eventtable.md), [timetable](../../table/timetable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
