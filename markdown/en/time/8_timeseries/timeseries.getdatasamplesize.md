# timeseries.getdatasamplesize

Return the size of one data sample.

## 📝 Syntax

- sz = getdatasamplesize(ts)

## 📥 Input argument

- ts - Input timeseries object.

## 📤 Output argument

- sz - Size of a single data sample.

## 📄 Description

<b>getdatasamplesize</b> Reports the dimensions of a single sample, excluding the time dimension.

## 💡 Example

```matlab
ts = timeseries([1 10; 2 20; 3 30], [1; 2; 3]);
getdatasamplesize(ts)

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
