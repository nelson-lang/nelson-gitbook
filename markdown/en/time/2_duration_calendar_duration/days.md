# days

Create durations from days or convert durations to days.

## 📝 Syntax

- d = days(x)
- x = days(d)

## 📥 Input argument

- inputs - Numeric day counts or duration arrays.

## 📤 Output argument

- output - A duration array for numeric input, or double day counts for duration input.

## 📄 Description


Create durations from days or convert durations to days. 

days represents elapsed 24-hour periods. For calendar-day arithmetic in calendarDuration, use caldays. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
d = days([1 2])
seconds(d)
days(hours(48))

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
