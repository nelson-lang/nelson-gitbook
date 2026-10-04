# juliandate

Convert datetime values to Julian date numbers.

## 📝 Syntax

- j = juliandate(t)

## 📥 Input argument

- inputs - A datetime array.

## 📤 Output argument

- output - A double array of Julian date numbers.

## 📄 Description

Convert datetime values to Julian date numbers.

The conversion adds the Julian date offset to Nelson serial date numbers.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
juliandate(datetime(2000, 1, 1))

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
