# isregular

Test whether datetime values are regularly spaced.

## 📝 Syntax

- tf = isregular(t)
- tf = isregular(t, unit)

## 📥 Input argument

- inputs - A datetime array and optional unit selector such as years, quarters, months, weeks, or days.

## 📤 Output argument

- output - A logical scalar.

## 📄 Description

Test whether datetime values are regularly spaced.

Without a unit, regularity is tested on serial date differences. With a calendar unit, the function compares unit indices.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
isregular(datetime(2024,1,1):days(1):datetime(2024,1,3))
isregular([datetime(2024,1,1), datetime(2024,2,1), datetime(2024,3,1)], 'months')

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
