# isbetween

Test whether datetime values lie inside an interval.

## 📝 Syntax

- tf = isbetween(t, lowerBound, upperBound)
- tf = isbetween(t, lowerBound, upperBound, intervalType)

## 📥 Input argument

- inputs - Date values and lower and upper bounds, plus an optional interval type: closed, open, openleft, openright, [], (), (], or [).

## 📤 Output argument

- output - A logical array.

## 📄 Description


Test whether datetime values lie inside an interval. 

The default interval is closed. Date-compatible inputs are converted with datenum before comparison. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
isbetween(datetime(2024, 2, 1), datetime(2024, 1, 1), datetime(2024, 3, 1))
isbetween(datetime(2024, 1, 1), datetime(2024, 1, 1), datetime(2024, 3, 1), 'open')

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
