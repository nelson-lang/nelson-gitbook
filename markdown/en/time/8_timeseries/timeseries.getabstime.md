# timeseries.getabstime

Return absolute sample times.

## 📝 Syntax

- times = getabstime(ts)

## 📥 Input argument

- ts - Input timeseries object.

## 📤 Output argument

- times - Absolute sample times as date strings.

## 📄 Description


<b>getabstime</b> Converts numeric sample times to absolute date strings using TimeInfo.StartDate and TimeInfo.Units.

## 💡 Example


```matlab
ts = timeseries([1; 2], [0; 1]);
ts = setabstime(ts, '01-Jan-2024');
getabstime(ts)

```


## 🔗 See also

[timeseries](../../time/8_timeseries/timeseries.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
