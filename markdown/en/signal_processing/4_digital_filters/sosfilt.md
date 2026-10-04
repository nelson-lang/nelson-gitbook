# sosfilt

Filter data with second-order sections.

## 📝 Syntax

- Y = sosfilt(SOS, X)
- Y = sosfilt(SOS, X, DIM)

## 📥 Input argument

- SOS - second-order-section matrix.
- X - input data.
- DIM - dimension to operate along.

## 📤 Output argument

- Y - filtered data.

## 📄 Description

<b>sosfilt</b> applies each row of SOS as one filter section.

## 💡 Example

```matlab

y = sosfilt([1 2 1 1 -0.5 0], [1 0 0 0]);

```

## 🔗 See also

[sos2tf](../../signal_processing/sos2tf.md), [filter](../../elementary_functions/filter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
