# calyears

Create calendar durations containing calendar years.

## 📝 Syntax

- c = calyears(x)

## 📥 Input argument

- inputs - Numeric calendar-year counts.

## 📤 Output argument

- output - A calendarDuration array with year counts stored as months.

## 📄 Description


Create calendar durations containing calendar years. 

calyears is for calendar arithmetic, not fixed elapsed-time conversion. Adding calyears to a datetime preserves month-end behavior. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
datetime(2024, 2, 29) + calyears(1)

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
