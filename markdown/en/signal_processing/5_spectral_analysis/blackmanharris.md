# blackmanharris

Blackman-Harris window.

## 📝 Syntax

- W = blackmanharris(M)
- W = blackmanharris(M, option)

## 📥 Input argument

- M - window length.
- option - 'symmetric' or 'periodic'.

## 📤 Output argument

- W - column vector containing the window.

## 📄 Description


<b>blackmanharris</b> returns a minimum four-term Blackman-Harris window.

## 💡 Example



```matlab

w = blackmanharris(5);

```


## 🔗 See also

[blackman](../../signal_processing/5_spectral_analysis/blackman.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
