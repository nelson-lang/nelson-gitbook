# quarter

Extract quarter numbers from date and time values.

## 📝 Syntax

- q = quarter(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A double array with values from 1 to 4.

## 📄 Description

Extract quarter numbers from date and time values.

quarter is computed from the calendar month using ceil(month(t)/3).

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
quarter(datetime(2024, [1 4 7 10], 1))

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
