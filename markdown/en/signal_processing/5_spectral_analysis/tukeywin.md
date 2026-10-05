# tukeywin

Tukey window.

## 📝 Syntax

- W = tukeywin(M)
- W = tukeywin(M, r)

## 📥 Input argument

- M - window length.
- r - taper ratio.

## 📤 Output argument

- W - column vector containing the window.

## 📄 Description


<b>tukeywin</b> returns a tapered cosine window.

## 💡 Example



```matlab

w = tukeywin(6, 0.5);

```


## 🔗 See also

[hann](../../signal_processing/5_spectral_analysis/hann.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
