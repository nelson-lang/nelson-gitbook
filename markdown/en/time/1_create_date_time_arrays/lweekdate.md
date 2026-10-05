# lweekdate

Return the last selected weekday in a month.

## 📝 Syntax

- d = lweekdate(weekdayNumber, yearNumber, monthNumber)

## 📥 Input argument

- inputs - Weekday number, year number, and month number.

## 📤 Output argument

- output - A serial date number.

## 📄 Description


Return the last selected weekday in a month. 

Weekday numbers follow weekday. The function starts from month end and steps backward to the requested weekday. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
datestr(lweekdate(6, 2024, 5))

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
