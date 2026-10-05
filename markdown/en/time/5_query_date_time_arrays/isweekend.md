# isweekend

Test whether date values fall on Saturday or Sunday.

## 📝 Syntax

- tf = isweekend(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A logical array.

## 📄 Description


Test whether date values fall on Saturday or Sunday. 

isweekend uses weekday numbering where Sunday and Saturday are weekend days. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
isweekend(datetime(2024, 6, 8))
isweekend(datetime(2024, 6, 10))

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
