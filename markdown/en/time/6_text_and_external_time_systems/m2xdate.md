# m2xdate

Convert Nelson serial dates to spreadsheet serial date numbers.

## 📝 Syntax

- x = m2xdate(t)

## 📥 Input argument

- inputs - datetime values, serial date numbers, or date-compatible input.

## 📤 Output argument

- output - A double array of spreadsheet serial date numbers.

## 📄 Description


Convert Nelson serial dates to spreadsheet serial date numbers. 

m2xdate subtracts the spreadsheet origin date 1899-12-30 from Nelson serial date numbers. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
m2xdate(datetime(1900, 1, 1))

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
