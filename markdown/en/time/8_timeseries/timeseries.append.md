# timeseries.append

Append timeseries samples.

## 📝 Syntax

- tsOut = append(ts1, ts2)
- tsOut = append(ts1, ts2, ts3)

## 📥 Input argument

- ts1 - First timeseries object.
- ts2 - Timeseries object to append.

## 📤 Output argument

- tsOut - Output timeseries object with the appended samples.

## 📄 Description

<b>append</b> Concatenates samples from two or more timeseries objects along the sample dimension.

## 💡 Example

```matlab
ts1 = timeseries([1; 2], [10; 11], 'Name', 'speed');
ts2 = timeseries(3, 12, 'Name', 'speed');
ts = append(ts1, ts2);
ts.Data

```

## 🔗 See also

[timeseries](../../time/timeseries.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
