# gausswin

Gaussian window.

## 📝 Syntax

- W = gausswin(M)
- W = gausswin(M, alpha)

## 📥 Input argument

- M - window length.
- alpha - shape parameter.

## 📤 Output argument

- W - column vector containing the window.

## 📄 Description

<b>gausswin</b> returns an M-point Gaussian window.

## 💡 Example

```matlab

w = gausswin(5, 2.5);

```

## 🔗 See also

[kaiser](../../signal_processing/kaiser.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
