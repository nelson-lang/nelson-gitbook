# hampel

Hampel outlier filtering.

## 📝 Syntax

- Y = hampel(X)
- Y = hampel(X, K)
- [Y, I] = hampel(X, K, NSIGMA)
- [Y, I, XMEDIAN, XSIGMA] = hampel(...)

## 📥 Input argument

- X - input signal.
- K - number of neighbors on each side.
- NSIGMA - outlier threshold in robust standard deviations.

## 📤 Output argument

- Y - filtered signal.
- I - logical outlier index.
- XMEDIAN - local median values.
- XSIGMA - local robust standard deviation estimates.

## 📄 Description


<b>hampel</b> replaces outliers by the local median.

## 💡 Example



```matlab

[y, i] = hampel([1 1 10 1 1], 1, 2);

```


## 🔗 See also

[medfilt1](../../signal_processing/1_signal_generation_preprocessing/medfilt1.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
