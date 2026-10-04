# datetime

Create datetime arrays from calendar parts, text, or numeric date representations.

## 📝 Syntax

- t = datetime()
- t = datetime(y, m, d)
- t = datetime(y, m, d, h, mi, s)
- t = datetime(text, 'InputFormat', fmt)
- t = datetime(x, 'ConvertFrom', kind)

## 📥 Input argument

- inputs - Year, month, day, optional time parts, text input, numeric input, and name-value options such as Format, TimeZone, InputFormat, ConvertFrom, Epoch, and TicksPerSecond.

## 📤 Output argument

- output - A datetime array storing serial date values plus display format and timezone metadata.

## 📄 Description

Create datetime arrays from calendar parts, text, or numeric date representations.

Use datetime to construct temporal values used by the other date and time functions. Numeric matrices with three or six columns are interpreted as date vectors; scalar and array components are expanded to a common size.

<b>string</b> returns the formatted text of each element and <b><missing></b> for <b>NaT</b>; the display, <b>char</b> and <b>cellstr</b> keep the text NaT (<b>cellstr(d, fmt)</b> uses the format <b>fmt</b>). <b>datetime(missing)</b>, and assigning <b>missing</b> into a datetime array, give <b>NaT</b>.

<b>datetime.empty(m, n, ...)</b> returns an empty datetime array; growing an array by assignment fills the new elements with <b>NaT</b>. A comparison with <b>missing</b> is false (<b>~=</b> is true), as with <b>NaT</b>.

<b>TimeZone</b> names a time zone (for example <b>'Europe/Paris'</b>, <b>'UTC'</b>, a fixed offset <b>'+05:30'</b>, a duration offset, or <b>'local'</b> for the system time zone). Setting it on a datetime that has a time zone keeps the same instants and moves the wall clock; on a datetime without one it keeps the wall clock. <b>posixtime</b> and <b>juliandate</b> inputs are UTC instants. Datetimes of different time zones compare, subtract and concatenate by instant (in the time zone of the first operand); a datetime with a time zone never combines with one without. A wall-clock time skipped by a daylight saving change moves after the gap, an ambiguous one is standard time, and fixed-length durations count elapsed time.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = datetime(2024, 5, 17, 13, 14, 15)
[y, m, d] = ymd(t)
posixtime(datetime(1970, 1, 2))

```

## 🔗 See also

[datetime](../../time/datetime.md), [duration](../../time/duration.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
