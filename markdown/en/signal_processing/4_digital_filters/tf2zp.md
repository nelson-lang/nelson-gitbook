# tf2zp

Convert transfer function coefficients to zero-pole-gain form.

## 📝 Syntax

- [Z, P, K] = tf2zp(B, A)

## 📥 Input argument

- B - numerator coefficients, or one numerator per row.
- A - denominator coefficients.

## 📤 Output argument

- Z - zeros.
- P - poles.
- K - gain.

## 📄 Description


<b>tf2zp</b> converts polynomial filter coefficients to a zero-pole-gain representation.

## 💡 Example



```matlab

[z, p, k] = tf2zp([1 2 1], [1 -0.5]);

```


## 🔗 See also

[zp2tf](../../signal_processing/4_digital_filters/zp2tf.md), [tf2sos](../../signal_processing/4_digital_filters/tf2sos.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
