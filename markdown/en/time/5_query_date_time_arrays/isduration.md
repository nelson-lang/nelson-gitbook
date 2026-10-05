# isduration

Test whether an input is a duration array.

## 📝 Syntax

- tf = isduration(A)

## 📥 Input argument

- inputs - Any Nelson value.

## 📤 Output argument

- output - A logical scalar.

## 📄 Description


Test whether an input is a duration array. 

Use isduration before converting elapsed time with seconds, minutes, hours, days, or years. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
isduration(seconds(10))
isduration(datetime(2024,1,1))

```


## 🔗 See also

[datetime](../../time/1_create_date_time_arrays/datetime.md), [duration](../../time/2_duration_calendar_duration/duration.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
