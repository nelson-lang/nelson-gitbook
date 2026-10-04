# iscalendarduration

Test whether an input is a calendarDuration array.

## 📝 Syntax

- tf = iscalendarduration(A)

## 📥 Input argument

- inputs - Any Nelson value.

## 📤 Output argument

- output - A logical scalar.

## 📄 Description

Test whether an input is a calendarDuration array.

Calendar durations represent calendar months, days, and seconds. This predicate distinguishes them from elapsed-time duration arrays.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
iscalendarduration(calmonths(2))
iscalendarduration(days(2))

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
