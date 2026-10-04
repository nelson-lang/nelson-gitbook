# between

Return calendar durations between two datetime values.

## 📝 Syntax

- c = between(t1, t2)
- c = between(t1, t2, components)

## 📥 Input argument

- inputs - Two datetime or date-compatible inputs and an optional component selector such as years, quarters, months, or days.

## 📤 Output argument

- output - A calendarDuration array.

## 📄 Description

Return calendar durations between two datetime values.

between expresses the interval using whole calendar components plus remaining day and time components. It supports scalar expansion between the two endpoints.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
c = between(datetime(2024, 1, 15), datetime(2024, 3, 20))
split(c, 'months')
split(c, 'days')

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
