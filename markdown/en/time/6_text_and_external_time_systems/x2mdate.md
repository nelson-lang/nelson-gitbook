# x2mdate

Convert spreadsheet serial date numbers to Nelson serial dates or datetime values.

## 📝 Syntax

- m = x2mdate(x)
- t = x2mdate(x, 'datetime')

## 📥 Input argument

- inputs - Spreadsheet serial date numbers and optional output type datetime.

## 📤 Output argument

- output - Nelson serial date numbers by default, or a datetime array when requested.

## 📄 Description


Convert spreadsheet serial date numbers to Nelson serial dates or datetime values. 

x2mdate adds the spreadsheet origin date 1899-12-30. Pass datetime as the second argument to construct datetime output directly. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
x2mdate(2)
x2mdate(2, 'datetime')

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
