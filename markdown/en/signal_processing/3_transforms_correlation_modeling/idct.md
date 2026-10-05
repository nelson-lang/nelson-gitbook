# idct

Inverse discrete cosine transform.

## 📝 Syntax

- X = idct(Y)
- X = idct(Y, N)
- X = idct(Y, N, DIM)

## 📥 Input argument

- Y - discrete cosine transform coefficients.
- N - transform length: Y is padded with zeros or truncated to length N.
- DIM - dimension to operate along.

## 📤 Output argument

- X - reconstructed signal (inverse of the orthonormal DCT-II).

## 📄 Description


<b>idct</b> computes the inverse of the orthonormal type-II discrete cosine transform along the first non-singleton dimension by default. For matrices, each column is transformed independently.

## 💡 Example



```matlab

y = dct([1 2 3 4]);
x = idct(y);

```


## 🔗 See also

[dct](../../signal_processing/3_transforms_correlation_modeling/dct.md), [ifft](../../fftw/ifft.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
