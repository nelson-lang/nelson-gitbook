# timezones

List timezone names available in the embedded timezone data.

## 📝 Syntax

- zones = timezones()
- [zones, version] = timezones()

## 📥 Input argument

- inputs - No input arguments.

## 📤 Output argument

- output - A string array of zone names and, optionally, a data version string.

## 📄 Description


List timezone names available in the embedded timezone data. 

The list includes zones supplied by the small embedded timezone database and the local pseudo-zone. 

Array-valued inputs keep their data shape when the operation supports arrays. Scalar operands are expanded where the implementation defines scalar expansion.

## 💡 Example

Basic usage.

```matlab
[zones, version] = timezones()
any(strcmp(cellstr(zones), 'Europe/Paris'))

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
