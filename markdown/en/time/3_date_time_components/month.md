# month

Extract month numbers or names from date and time values.

## 📝 Syntax

- m = month(t)
- name = month(t, 'name')
- abbr = month(t, 'shortname')

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input, plus optional name output selector.

## 📤 Output argument

- output - A double array of month numbers, or a string array of month names.

## 📄 Description


Extract month numbers or names from date and time values. 

Use name for full English month names and shortname for abbreviated names. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
month(datetime(2024, 5, 17))
month(datetime(2024, 5, 17), 'name')

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
