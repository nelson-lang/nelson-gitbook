# exceltime

Convert datetime values to spreadsheet serial date numbers.

## 📝 Syntax

- e = exceltime(t)

## 📥 Input argument

- inputs - A datetime array.

## 📤 Output argument

- output - A double array of spreadsheet serial date values.

## 📄 Description


Convert datetime values to spreadsheet serial date numbers. 

exceltime uses the 1899-12-30 origin used by common spreadsheet serial-date calculations. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
exceltime(datetime(1899, 12, 31))
exceltime(datetime(1900, 1, 1))

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
