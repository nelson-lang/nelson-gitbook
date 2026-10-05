# zp2sos

Convert zero-pole-gain form to second-order sections.

## 📝 Syntax

- SOS = zp2sos(Z, P, K)

## 📥 Input argument

- Z - zeros.
- P - poles.
- K - gain.

## 📤 Output argument

- SOS - matrix of second-order sections.

## 📄 Description


<b>zp2sos</b> groups zeros and poles into second-order sections and applies the gain to the first section.

## 💡 Example



```matlab

sos = zp2sos([-1; -1], 0.5, 1);

```


## 🔗 See also

[sos2zp](../../signal_processing/4_digital_filters/sos2zp.md), [zp2tf](../../signal_processing/4_digital_filters/zp2tf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
