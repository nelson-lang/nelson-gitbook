# calquarters

Create calendar durations containing calendar quarters.

## 📝 Syntax

- c = calquarters(x)

## 📥 Input argument

- inputs - Numeric quarter counts.

## 📤 Output argument

- output - A calendarDuration array with each quarter stored as three months.

## 📄 Description

Create calendar durations containing calendar quarters.

Use calquarters for month-based calendar shifts. This differs from days or duration arithmetic because month lengths vary.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
datetime(2024, 1, 31) + calquarters(1)

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
