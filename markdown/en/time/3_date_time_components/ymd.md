# ymd

Split datetime values into year, month, and day components.

## 📝 Syntax

- [y, m, d] = ymd(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - Three double arrays containing year, month, and day values.

## 📄 Description

Split datetime values into year, month, and day components.

ymd is a convenience wrapper around date vector extraction for calendar date components.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
[y, m, d] = ymd(datetime(2024, 5, 17))

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
