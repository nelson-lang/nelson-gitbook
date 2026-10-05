# isstable

Determine whether a digital filter is stable.

## 📝 Syntax

- tf = isstable(B, A)
- tf = isstable(SOS)

## 📥 Input argument

- B, A - transfer function coefficients.
- SOS - second-order-section matrix.

## 📤 Output argument

- tf - true if all poles are inside the unit circle.

## 📄 Description


<b>isstable</b> checks the pole radii of a digital filter.

## 💡 Example



```matlab

tf = isstable([1], [1 -0.5]);

```


## 🔗 See also

[tf2zp](../../signal_processing/4_digital_filters/tf2zp.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
