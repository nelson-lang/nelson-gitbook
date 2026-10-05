# var

Variance

## 📝 Syntax

- V = var(A)
- V = var(A, w)
- V = var(A, w, dim)
- V = var(A, w, vecdim)
- V = var(A, w, 'all')
- V = var(..., nanflag)
- [V, M] = var(...)

## 📥 Input argument

- A - a vector, matrix or multidimensional array: single, double, int8, int16, int32, int64, uint8, uint16, uint32 or uint64.
- w - weight: 0 (normalization by N-1, default), 1 (normalization by N) or a vector of nonnegative weights whose length is the size of the operating dimension.
- dim - a positive integer scalar: dimension to operate along.
- vecdim - a vector of positive integers: dimensions to operate along.
- nanflag - 'includenan' (default) or 'omitnan'.

## 📤 Output argument

- V - Variance of A.
- M - Mean of A used to compute the variance, same size as V. It is the weighted mean when w is a weight vector.

## 📄 Description


<b>V = var(A)</b> returns the variance of the elements of A along the first array dimension whose size does not equal 1. 

<b>[V, M] = var(...)</b> also returns the mean <b>M</b> computed with the same weights, dimensions and nanflag as the variance. 

For integer input data (int8, int16, int32, int64, uint8, uint16, uint32, uint64), the variance is computed in double precision and <b>V</b> and <b>M</b> are double.

## Used function(s)


    std
    mean
    cov
  

## 💡 Examples



```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
V = var(M)
```
Integer input data

```matlab
V = var(int8([-128 127 0]))
```
Weighted variance and weighted mean

```matlab
A = [4 -7 3; 1 4 -2; 10 7 9];
[V, M] = var(A, [1 2 3])
```


## 🔗 See also

[cov](../../statistics/1_descriptive_statistics_visualization/cov.md), [mean](../../statistics/1_descriptive_statistics_visualization/mean.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | Integer input data supported. |
| 2.0.0   | Second output M: mean used to compute the variance. |

<!--
## 👤 Author

Allan CORNET
-->
