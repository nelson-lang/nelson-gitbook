# calendarDuration

Create calendar durations with month, day, and time components.

## 📝 Syntax

- c = calendarDuration(y, mo, d)
- c = calendarDuration(y, mo, d, h, mi, s)
- c = calendarDuration(x)

## 📥 Input argument

- inputs - Calendar years, months, days, and optional time components, or numeric arrays.

## 📤 Output argument

- output - A calendarDuration array storing months, days, seconds, and a display format.

## 📄 Description

Create calendar durations with month, day, and time components.

Calendar durations preserve calendar semantics when added to datetimes. Month-based arithmetic clamps dates to month ends when needed.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
c = calendarDuration(0, 1, 3)
t = datetime(2024, 1, 31) + c

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
