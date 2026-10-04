# calweeks

Create calendar durations containing whole weeks.

## 📝 Syntax

- c = calweeks(x)

## 📥 Input argument

- inputs - Numeric week counts.

## 📤 Output argument

- output - A calendarDuration array with week counts stored as seven calendar days.

## 📄 Description

Create calendar durations containing whole weeks.

calweeks stores weeks in the day component of calendarDuration. It is useful for date arithmetic that should remain in calendar-duration form.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
datetime(2024, 1, 1) + calweeks(2)

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
