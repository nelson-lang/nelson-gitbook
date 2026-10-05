# timeseries.getdatasamples

Return data samples by index.

## 📝 Syntax

- data = getdatasamples(ts, indices)

## 📥 Input argument

- ts - Input timeseries object.
- indices - Sample indices.

## 📤 Output argument

- data - Extracted data samples.

## 📄 Description


<b>getdatasamples</b> Extracts data values for the requested sample indices without returning a timeseries wrapper.

## 💡 Example


```matlab
ts = timeseries([10; 20; 30], [1; 2; 3]);
getdatasamples(ts, [1 3])

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
