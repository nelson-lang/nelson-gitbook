# year

Extract year numbers from date and time values.

## 📝 Syntax

- y = year(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A double array of calendar years.

## 📄 Description


Extract year numbers from date and time values. 

year uses datevec for numeric date inputs and the Year dependent property for datetime inputs. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = datetime(2024, [1 12], [1 31])
year(t)

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
