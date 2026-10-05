# impzlength

Length estimate for an impulse response.

## 📝 Syntax

- N = impzlength(B, A)
- N = impzlength(B, A, tolerance)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- tolerance - response truncation tolerance.

## 📤 Output argument

- N - estimated response length.

## 📄 Description


<b>impzlength</b> returns a practical length for impulse response calculations.

## 💡 Example



```matlab

n = impzlength([1 1], 1);

```


## 🔗 See also

[impz](../../signal_processing/4_digital_filters/impz.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
