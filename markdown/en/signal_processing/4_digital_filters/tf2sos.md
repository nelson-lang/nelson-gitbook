# tf2sos

Convert transfer function coefficients to second-order sections.

## 📝 Syntax

- SOS = tf2sos(B, A)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.

## 📤 Output argument

- SOS - matrix of second-order sections.

## 📄 Description


<b>tf2sos</b> converts transfer function coefficients to a matrix whose rows contain numerator and denominator section coefficients.

## 💡 Example



```matlab

sos = tf2sos([1 2 1], [1 -0.5]);

```


## 🔗 See also

[sos2tf](../../signal_processing/4_digital_filters/sos2tf.md), [zp2sos](../../signal_processing/4_digital_filters/zp2sos.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
