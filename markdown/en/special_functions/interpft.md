# interpft

1-D interpolation using the FFT method.

## 📝 Syntax

- y = interpft(x, ny)
- y = interpft(x, ny, dim)

## 📥 Input argument

- x - a vector or matrix of samples of a periodic function.
- ny - the number of output samples (at least the number of input samples).
- dim - the dimension along which to interpolate.

## 📤 Output argument

- y - the resampled data.

## 📄 Description


<b>y = interpft(x, ny)</b> resamples <b>x</b> to <b>ny</b> equally spaced points using the Fourier transform, assuming <b>x</b> is periodic.

## 💡 Example



```matlab
y = interpft([1 2 3 4], 8)
```


## 🔗 See also

[interp1](../special_functions/interp1.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
