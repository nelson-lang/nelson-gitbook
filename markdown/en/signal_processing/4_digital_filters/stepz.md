# stepz

Step response of a digital filter.

## 📝 Syntax

- [S, T] = stepz(B, A)
- [S, T] = stepz(B, A, N)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- N - number of samples.

## 📤 Output argument

- S - step response.
- T - sample or time vector.

## 📄 Description


<b>stepz</b> computes the cumulative sum of the impulse response.

## 💡 Example



```matlab

[s, t] = stepz([1 1], 1, 4);

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
