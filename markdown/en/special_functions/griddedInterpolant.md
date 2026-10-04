# griddedInterpolant

Gridded data interpolant object

## 📝 Syntax

- F = griddedInterpolant(x, v)
- F = griddedInterpolant(x, v, method)
- F = griddedInterpolant(x, v, method, extrapolationMethod)
- F = griddedInterpolant(gridVecs, V)
- F = griddedInterpolant(X1, X2, ..., Xn, V)
- F = griddedInterpolant(V)
- Vq = F(xq)
- Vq = F(xq1, xq2, ..., xqn)
- Vq = F(queryGridVecs)

## 📥 Input argument

- x - a vector of sample points (1-D grid), strictly increasing.
- v - sample values at the sample points.
- gridVecs - a cell array <b>{x1, x2, ..., xn}</b> of grid vectors, one per dimension of <b>V</b>.
- V - an array of sample values defined over the grid.
- method - a character vector: <b>'linear'</b> (default), <b>'nearest'</b>, <b>'previous'</b>, <b>'next'</b>, <b>'pchip'</b>, <b>'cubic'</b>, <b>'spline'</b>, or <b>'makima'</b>.
- extrapolationMethod - a character vector selecting the extrapolation rule: <b>'linear'</b>, <b>'nearest'</b>, <b>'previous'</b>, <b>'next'</b>, <b>'pchip'</b>, <b>'cubic'</b>, <b>'spline'</b>, <b>'makima'</b>, or <b>'none'</b>. The default matches <b>method</b>.

## 📤 Output argument

- F - a griddedInterpolant object.
- Vq - interpolated values at the query points.

## 📄 Description

<b>griddedInterpolant</b> stores gridded sample points and values for repeated interpolation queries.

The object exposes four properties that can be read and set: <b>GridVectors</b> (a cell array of grid vectors), <b>Values</b>, <b>Method</b>, and <b>ExtrapolationMethod</b>.

Evaluate the interpolant by calling the object like a function, either with one query array per dimension, or with a single cell array of query grid vectors.

The <b>'cubic'</b> method uses cubic convolution and requires a grid with uniform spacing; on a non-uniform grid it switches to <b>'spline'</b>. Cubic convolution does not support extrapolation, so query points outside the grid return <b>NaN</b> when <b>ExtrapolationMethod</b> is <b>'cubic'</b>.

## 💡 Examples

1-D interpolation.

```matlab
F = griddedInterpolant([1 2 3], [10 20 30]);
Vq = F(2.5)
```

N-D grid given as a cell of grid vectors.

```matlab
F = griddedInterpolant({1:3, 1:3}, magic(3));
Vq = F(2, 2)
```

Spline interpolation and property readback.

```matlab
F = griddedInterpolant([1 2 3], [10 20 30], 'spline');
Vq = F(2.5);
F.Method
F.ExtrapolationMethod
```

## 🔗 See also

[interp1](../special_functions/interp1.md), [interpn](../special_functions/interpn.md), [scatteredInterpolant](../geometry/scatteredInterpolant.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
