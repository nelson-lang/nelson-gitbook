# seconds

Create durations from seconds or extract seconds from durations.

## 📝 Syntax

- d = seconds(x)
- x = seconds(d)

## 📥 Input argument

- inputs - Numeric second counts or duration arrays.

## 📤 Output argument

- output - A duration array for numeric input, or double second counts for duration input.

## 📄 Description


Create durations from seconds or extract seconds from durations. 

seconds is the base elapsed-time unit used by duration. It is useful for numeric comparisons, arithmetic, and conversion from other duration units. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
d = seconds([1 2])
seconds(minutes(2))

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
