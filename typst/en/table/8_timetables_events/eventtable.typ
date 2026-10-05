#import "../nelson_help.typ": *

= eventtable <table:8_timetables_events.eventtable>

Create an event table for a timetable.

== Syntax

- #raw("E = eventtable(eventTimes)");
- #raw("E = eventtable(TT)");
- #raw("E = eventtable(___, 'EventLabels', labels)");
- #raw("E = eventtable(___, 'EventLengths', lengths)");
- #raw("E = eventtable(___, 'EventEnds', ends)");
- #raw("E = eventtable(___, 'EventLabelsVariable', name)");
- #raw("E = eventtable(___, 'EventLengthsVariable', name)");
- #raw("E = eventtable(___, 'EventEndsVariable', name)");

== Input argument

/ eventTimes: Datetime or duration vector containing event start times.
/ TT: Timetable whose row times become event times and whose variables become event variables.
/ labels: Event labels. A scalar value is expanded to all events.
/ lengths: Duration values that specify event lengths.
/ ends: Datetime or duration values that specify event end times.
/ name: Name or index of a variable of the input timetable that stores event labels, lengths, or end times. Only valid when the first input is a timetable.

== Output argument

/ E: Event table: a timetable whose row times are the event times.

== Description

#strong[eventtable]; creates an event table that can be attached to a timetable through #strong[Properties.Events];; #strong[syncevents]; then copies its variables into the timetable.

 When the input is a time vector, event labels, lengths, and end times are specified with name-value arguments. Additional event variables are supplied by first creating a timetable and then passing that timetable to #strong[eventtable];: any positional input after the first one is an error.

 An event table is a timetable: the event times are its row times (#strong[E.Properties.RowTimes];, or #strong[E.Time];), not a variable, so #strong[size];, #strong[width];, indexing and concatenation behave as for a timetable.

 #strong[E.Properties]; starts with #strong[EventLabelsVariable];, #strong[EventLengthsVariable]; and #strong[EventEndsVariable];, the names of the variables holding the event labels, lengths and end times (\[\] when unset). They can be assigned a variable name or index, or \[\]. A variable renamed or removed is unset.

 Created from event times without labels, the event table gets the labels "Event 1", "Event 2", ... in an #strong[EventLabels]; variable. Created from a timetable, no variable is used as labels unless specified.


== Examples

``````matlab
eventTimes = datetime(2022, 11, [3; 5; 10; 14]);
eventType = {'Hail'; 'Rain'; 'Snow'; 'Rain'};
eventLength = hours([1.2; 36; 18; 20]);
E = eventtable(eventTimes, ...
  'EventLabels', eventType, ...
  'EventLengths', eventLength)

``````

``````matlab
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

``````


== See also

#nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<table:8_timetables_events.syncevents>)[syncevents];, #nlink(<table:8_timetables_events.extractevents>)[extractevents];, #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
