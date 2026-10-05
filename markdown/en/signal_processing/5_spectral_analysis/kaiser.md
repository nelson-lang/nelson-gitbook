# kaiser

Kaiser window.

## 📝 Syntax

- W = kaiser(M)
- W = kaiser(M, beta)

## 📥 Input argument

- M - window length.
- beta - shape parameter.

## 📤 Output argument

- W - column vector containing the window.

## 📄 Description


<b>kaiser</b> returns an M-point Kaiser window.

## 💡 Example



```matlab

w = kaiser(5, 2);

```


## 🔗 See also

[kaiserord](../../signal_processing/5_spectral_analysis/kaiserord.md), [fir1](../../signal_processing/4_digital_filters/fir1.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
