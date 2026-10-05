# duration

Create elapsed time durations.

## 📝 Syntax

- d = duration(h, m, s)
- d = duration(h, m, s, ms)
- d = duration(text)
- d = duration(text, 'InputFormat', fmt)
- d = duration(x)

## 📥 Input argument

- inputs - Hours, minutes, seconds, optional milliseconds, duration text, or an N-by-3 numeric matrix.

## 📤 Output argument

- output - A duration array storing elapsed seconds and a display format.

## 📄 Description


Create elapsed time durations. 

The constructor accepts numeric parts and common colon-separated text forms. Use hours, minutes, seconds, milliseconds, days, and years for unit-specific construction and conversion. 

<b>string</b> returns the display text of each element and <b><missing></b> for a <b>NaN</b> duration; the display, <b>char</b> and <b>cellstr</b> keep the text NaN (<b>cellstr(d, fmt)</b> uses the format <b>fmt</b>). <b>duration(missing)</b>, and assigning <b>missing</b> into a duration array, give <b>NaN</b>. 

<b>duration.empty(m, n, ...)</b> returns an empty duration array. A comparison with <b>missing</b> is false (<b>~=</b> is true), as with a <b>NaN</b> duration. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
d = duration(1, 2, 3)
seconds(d)
duration('1:02', 'InputFormat', 'mm:ss')
string(seconds([1 NaN]))

```


## 🔗 See also

[datetime](../../time/1_create_date_time_arrays/datetime.md), [duration](../../time/2_duration_calendar_duration/duration.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
