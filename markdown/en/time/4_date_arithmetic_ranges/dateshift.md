# dateshift

Shift datetime values to calendar boundaries or selected weekdays.

## 📝 Syntax

- t2 = dateshift(t, 'start', unit)
- t2 = dateshift(t, 'end', unit)
- t2 = dateshift(t, 'start', unit, rule)
- t2 = dateshift(t, 'dayofweek', day, rule)

## 📥 Input argument

- inputs - A datetime array, shift mode, unit or weekday selector, and optional rule.

## 📤 Output argument

- output - A datetime array shifted according to the selected rule.

## 📄 Description


Shift datetime values to calendar boundaries or selected weekdays. 

Supported boundary units include year, quarter, month, week, day, hour, minute, and second. Weekday shifting accepts weekday names, numbers, weekday, and weekend. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = datetime(2024, 5, 17, 13, 14, 15)
dateshift(t, 'start', 'month')
dateshift(t, 'dayofweek', 'Monday', 'next')

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
