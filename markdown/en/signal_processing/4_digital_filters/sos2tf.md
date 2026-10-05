# sos2tf

Convert second-order sections to transfer function coefficients.

## 📝 Syntax

- [B, A] = sos2tf(SOS)

## 📥 Input argument

- SOS - matrix with six columns: b0, b1, b2, a0, a1, a2.

## 📤 Output argument

- B - combined numerator coefficients.
- A - combined denominator coefficients.

## 📄 Description


<b>sos2tf</b> multiplies all second-order sections into one transfer function.

## 💡 Example



```matlab

[b, a] = sos2tf([1 2 1 1 -0.5 0]);

```


## 🔗 See also

[tf2sos](../../signal_processing/4_digital_filters/tf2sos.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
