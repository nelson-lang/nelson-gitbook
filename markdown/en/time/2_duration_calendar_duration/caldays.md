# caldays

Create calendar durations containing whole days.

## 📝 Syntax

- c = caldays(x)

## 📥 Input argument

- inputs - Numeric day counts.

## 📤 Output argument

- output - A calendarDuration array with day components.

## 📄 Description

Create calendar durations containing whole days.

caldays stores values in the day component of calendarDuration. For fixed elapsed 24-hour durations, use days instead.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
datetime(2024, 1, 1) + caldays(3)

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
