# interpn

Interpolation for N-D gridded data in ndgrid format

## 📝 Syntax

- Vq = interpn(X1, X2, ..., Xn, V, Xq1, Xq2, ..., Xqn)
- Vq = interpn(V, Xq1, Xq2, ..., Xqn)
- Vq = interpn(V)
- Vq = interpn(V, k)
- Vq = interpn(..., method)
- Vq = interpn(..., method, extrapval)

## 📥 Input argument

- X1, ..., Xn - Sample grid points: vectors or ndgrid arrays.
- V - Sample values: real or complex array. Extra dimensions represent additional data sets on the same grid.
- Xq1, ..., Xqn - Query points.
- method - 'linear', 'nearest', 'pchip', 'cubic', 'makima', or 'spline'. PCHIP is only for 1-D.

## 📤 Output argument

- Vq - Interpolated values.

## 📄 Description

<b>interpn</b> interpolates N-D gridded data using ndgrid conventions. The default grid is 1:size(V,i) in each dimension.

The cubic-family methods use a native tensor-product four-point stencil, with linear fallback on dimensions that have fewer than four samples. PCHIP remains restricted to the 1-D interpn syntax.

<b>interpn(V)</b> and <b>interpn(V,k)</b> refine the default grid. Query arrays of the same size are treated as scattered points; mixed-orientation vectors define a full grid.

## 💡 Examples

```matlab
V = [1 2; 3 4];
Vq = interpn(V, 1.5, 1.5)
```

```matlab
x = [10 20];
y = [1 3];
[X,Y] = ndgrid(x, y);
V = [1 2; 3 4];
Vq = interpn(X, Y, V, 15, 2)
```

```matlab
V = [1 2; 3 4];
Vq = interpn(V, 1)
```

```matlab
V = reshape(1:16, [2 2 2 2]);
Vq = interpn(V, 1.5, 1.5, 1.5, 1.5)
```

## 🔗 See also

[interp1](../special_functions/interp1.md), [interp2](../special_functions/interp2.md), [interp3](../special_functions/interp3.md), [ndgrid](../elementary_functions/ndgrid.md).

<!--
## 👤 Author

Allan CORNET
-->
