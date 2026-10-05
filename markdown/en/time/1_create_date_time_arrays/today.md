# today

Return the serial date number for the current day.

## 📝 Syntax

- t = today()

## 📥 Input argument

- inputs - No input arguments.

## 📤 Output argument

- output - A scalar serial date number with no time-of-day fraction.

## 📄 Description


Return the serial date number for the current day. 

today is equivalent to floor(now()) at the time of the call. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = today()
t == floor(t)

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
