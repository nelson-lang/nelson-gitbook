#import "../nelson_help.typ": *

= duration <time:2_duration_calendar_duration.duration>

Create elapsed time durations.

== Syntax

- #raw("d = duration(h, m, s)");
- #raw("d = duration(h, m, s, ms)");
- #raw("d = duration(text)");
- #raw("d = duration(text, 'InputFormat', fmt)");
- #raw("d = duration(x)");

== Input argument

/ inputs: Hours, minutes, seconds, optional milliseconds, duration text, or an N-by-3 numeric matrix.

== Output argument

/ output: A duration array storing elapsed seconds and a display format.

== Description

Create elapsed time durations.

 The constructor accepts numeric parts and common colon-separated text forms. Use hours, minutes, seconds, milliseconds, days, and years for unit-specific construction and conversion.

 #strong[string]; returns the display text of each element and #strong[\<missing\>]; for a #strong[NaN]; duration; the display, #strong[char]; and #strong[cellstr]; keep the text NaN (#strong[cellstr(d, fmt)]; uses the format #strong[fmt];). #strong[duration(missing)];, and assigning #strong[missing]; into a duration array, give #strong[NaN];.

 #strong[duration.empty(m, n, ...)]; returns an empty duration array. A comparison with #strong[missing]; is false (#strong[\~\=]; is true), as with a #strong[NaN]; duration.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
d = duration(1, 2, 3)
seconds(d)
duration('1:02', 'InputFormat', 'mm:ss')
string(seconds([1 NaN]))

``````


== See also

#nlink(<time:1_create_date_time_arrays.datetime>)[datetime];, #nlink(<time:2_duration_calendar_duration.duration>)[duration];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
