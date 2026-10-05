# peak2peak

Difference between maximum and minimum values.

## 📝 Syntax

- Y = peak2peak(X)
- Y = peak2peak(X, "all")
- Y = peak2peak(X, DIM)
- Y = peak2peak(X, VECDIM)

## 📥 Input argument

- X - input data.
- DIM - dimension to operate along.
- VECDIM - vector of dimensions to operate along.

## 📤 Output argument

- Y - peak-to-peak value.

## 📄 Description


<b>peak2peak</b> computes max(X) - min(X).

## 💡 Example



```matlab

y = peak2peak([1 4 -2]);

```


## 🔗 See also

[rms](../../signal_processing/2_measurements_feature_extraction/rms.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
