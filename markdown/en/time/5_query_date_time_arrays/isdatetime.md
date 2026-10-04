# isdatetime

Test whether an input is a datetime array.

## 📝 Syntax

- tf = isdatetime(A)

## 📥 Input argument

- inputs - Any Nelson value.

## 📤 Output argument

- output - A logical scalar.

## 📄 Description

Test whether an input is a datetime array.

Use isdatetime to branch on datetime support before calling datetime-specific functions such as datenum, dateshift, tzoffset, or isnat.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
isdatetime(datetime(2024,1,1))
isdatetime(seconds(1))

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
