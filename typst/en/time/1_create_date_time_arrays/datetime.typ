#import "../nelson_help.typ": *

= datetime <time:1_create_date_time_arrays.datetime>

Create datetime arrays from calendar parts, text, or numeric date representations.

== Syntax

- #raw("t = datetime()");
- #raw("t = datetime(y, m, d)");
- #raw("t = datetime(y, m, d, h, mi, s)");
- #raw("t = datetime(text, 'InputFormat', fmt)");
- #raw("t = datetime(x, 'ConvertFrom', kind)");

== Input argument

/ inputs: Year, month, day, optional time parts, text input, numeric input, and name-value options such as Format, TimeZone, InputFormat, ConvertFrom, Epoch, and TicksPerSecond.

== Output argument

/ output: A datetime array storing serial date values plus display format and timezone metadata.

== Description

Create datetime arrays from calendar parts, text, or numeric date representations.

 Use datetime to construct temporal values used by the other date and time functions. Numeric matrices with three or six columns are interpreted as date vectors; scalar and array components are expanded to a common size.

 #strong[string]; returns the formatted text of each element and #strong[\<missing\>]; for #strong[NaT];; the display, #strong[char]; and #strong[cellstr]; keep the text NaT (#strong[cellstr(d, fmt)]; uses the format #strong[fmt];). #strong[datetime(missing)];, and assigning #strong[missing]; into a datetime array, give #strong[NaT];.

 #strong[datetime.empty(m, n, ...)]; returns an empty datetime array; growing an array by assignment fills the new elements with #strong[NaT];. A comparison with #strong[missing]; is false (#strong[\~\=]; is true), as with #strong[NaT];.

 #strong[TimeZone]; names a time zone (for example #strong['Europe\/Paris'];, #strong['UTC'];, a fixed offset #strong['+05:30'];, a duration offset, or #strong['local']; for the system time zone). Setting it on a datetime that has a time zone keeps the same instants and moves the wall clock; on a datetime without one it keeps the wall clock. #strong[posixtime]; and #strong[juliandate]; inputs are UTC instants. Datetimes of different time zones compare, subtract and concatenate by instant (in the time zone of the first operand); a datetime with a time zone never combines with one without. A wall-clock time skipped by a daylight saving change moves after the gap, an ambiguous one is standard time, and fixed-length durations count elapsed time.

 Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.


== Example

Basic usage.

``````matlab
t = datetime(2024, 5, 17, 13, 14, 15)
[y, m, d] = ymd(t)
posixtime(datetime(1970, 1, 2))

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
