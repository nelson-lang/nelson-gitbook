# convertTo

Convert datetime values to selected numeric representations.

## 📝 Syntax

- x = convertTo(t, 'datenum')
- x = convertTo(t, 'posixtime')
- x = convertTo(t, 'juliandate')
- x = convertTo(t, 'exceltime')
- x = convertTo(t, 'yyyymmdd')

## 📥 Input argument

- inputs - A datetime array and a conversion kind.

## 📤 Output argument

- output - A numeric array matching the requested representation.

## 📄 Description

Convert datetime values to selected numeric representations.

convertTo centralizes the datetime conversions also available through datenum, posixtime, juliandate, exceltime, and yyyymmdd.

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
t = datetime(2024, 5, 17)
convertTo(t, 'yyyymmdd')

```

## 🔗 See also

[datetime](../../time/datetime.md), [duration](../../time/duration.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
