# timeseries.getqualitydesc

Return quality descriptions for quality codes.

## 📝 Syntax

- desc = getqualitydesc(ts, codes)

## 📥 Input argument

- ts - Input timeseries object.
- codes - Quality codes to describe.

## 📤 Output argument

- desc - Quality code descriptions.

## 📄 Description

<b>getqualitydesc</b> Looks up quality code descriptions from ts.QualityInfo.

## 💡 Example

```matlab
ts = timeseries([1; 2], [1; 2]);
ts.QualityInfo = tsdata.qualmetadata('Code', [0 1], 'Description', {'ok', 'bad'});
getqualitydesc(ts, [0 1])

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
