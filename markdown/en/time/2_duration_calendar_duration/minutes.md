# minutes

Create durations from minutes or convert durations to minutes.

## 📝 Syntax

- d = minutes(x)
- x = minutes(d)

## 📥 Input argument

- inputs - Numeric minute counts or duration arrays.

## 📤 Output argument

- output - A duration array for numeric input, or double minute counts for duration input.

## 📄 Description

Create durations from minutes or convert durations to minutes.

minutes stores elapsed time as seconds internally and provides convenient construction and extraction in minute units.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
d = minutes([30 90])
seconds(d)
minutes(hours(2))

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
