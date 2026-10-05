# chebwin

Dolph-Chebyshev window.

## 📝 Syntax

- W = chebwin(M)
- W = chebwin(M, ripple)

## 📥 Input argument

- M - window length.
- ripple - sidelobe attenuation in decibels.

## 📤 Output argument

- W - column vector containing the window.

## 📄 Description


<b>chebwin</b> returns a Dolph-Chebyshev window normalized to unit peak amplitude.

## 💡 Example



```matlab

w = chebwin(5, 40);

```


## 🔗 See also

[kaiser](../../signal_processing/5_spectral_analysis/kaiser.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
