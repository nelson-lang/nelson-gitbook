# sos2zp

Convert second-order sections to zero-pole-gain form.

## 📝 Syntax

- [Z, P, K] = sos2zp(SOS)

## 📥 Input argument

- SOS - second-order-section matrix.

## 📤 Output argument

- Z - zeros.
- P - poles.
- K - gain.

## 📄 Description


<b>sos2zp</b> converts sections to transfer function coefficients and then to zero-pole-gain form.

## 💡 Example



```matlab

[z, p, k] = sos2zp([1 2 1 1 -0.5 0]);

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
