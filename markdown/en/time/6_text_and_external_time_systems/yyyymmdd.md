# yyyymmdd

Convert date values to numeric yyyymmdd calendar dates.

## 📝 Syntax

- n = yyyymmdd(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A double array where each date is encoded as year\*10000 + month\*100 + day.

## 📄 Description


Convert date values to numeric yyyymmdd calendar dates. 

yyyymmdd is useful for compact sortable date keys when time-of-day information is not needed. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
yyyymmdd(datetime(2024, 5, 17))

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
