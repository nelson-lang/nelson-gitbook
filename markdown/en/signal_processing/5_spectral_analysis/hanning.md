# hanning

Hann window compatibility function.

## 📝 Syntax

- w = hanning(n)
- w = hanning(n, option)

## 📥 Input argument

- n - Window length.
- option - 'symmetric' or 'periodic'.

## 📤 Output argument

- w - Column vector containing the window.

## 📄 Description

<b>hanning</b> returns the same window as <b>hann</b>.

## 💡 Example

```matlab
w = hanning(6, 'periodic')
```

## 🔗 See also

[hann](../../signal_processing/hann.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
