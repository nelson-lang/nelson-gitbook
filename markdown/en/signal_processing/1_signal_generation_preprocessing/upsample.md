# upsample

Upsample a sequence by an integer factor.

## 📝 Syntax

- Y = upsample(X, n)
- Y = upsample(X, n, phase)
- Y = upsample(X, n, phase, dim)

## 📥 Input argument

- X - input array.
- n - positive integer upsampling factor.
- phase - optional insertion phase from 0 to n - 1.
- dim - optional dimension to process.

## 📤 Output argument

- Y - upsampled array with inserted zeros.

## 📄 Description


<b>upsample</b> inserts n - 1 zeros between samples along the selected dimension.

## 💡 Example



```matlab

Y = upsample([1 2 3], 2)

```


## 🔗 See also

[downsample](../../signal_processing/1_signal_generation_preprocessing/downsample.md), [upfirdn](../../signal_processing/1_signal_generation_preprocessing/upfirdn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
