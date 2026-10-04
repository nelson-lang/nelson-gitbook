# weeknum

Return week numbers within the calendar year.

## 📝 Syntax

- w = weeknum(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A double array of week numbers.

## 📄 Description

Return week numbers within the calendar year.

weeknum is an alias-style wrapper around week for compatibility with code that uses this function name.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
weeknum(datetime(2024, 1, 8))

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
