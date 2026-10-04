# isnat

Test datetime values for not-a-time elements.

## 📝 Syntax

- tf = isnat(t)

## 📥 Input argument

- inputs - A datetime array.

## 📤 Output argument

- output - A logical array with true where datetime serial values are NaN.

## 📄 Description

Test datetime values for not-a-time elements.

isnat rejects non-datetime input. It is the datetime-specific missing-value test and preserves the shape of the datetime data.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = [datetime(2024,1,1), NaT]
isnat(t)

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
