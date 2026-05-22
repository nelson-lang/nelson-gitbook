# interp2

Interpolation for 2-D gridded data in meshgrid format

## 📝 Syntax

- Vq = interp2(X, Y, V, Xq, Yq)
- Vq = interp2(V, Xq, Yq)
- Vq = interp2(V)
- Vq = interp2(V, k)
- Vq = interp2(..., method)
- Vq = interp2(..., method, extrapval)

## 📥 Input argument

- X, Y - Sample grid points: vectors or meshgrid arrays.
- V - Sample values: real or complex matrix.
- Xq, Yq - Query points.
- method - 'linear', 'nearest', 'cubic', 'makima', or 'spline'.
- extrapval - Scalar value returned outside the grid domain.

## 📤 Output argument

- Vq - Interpolated values. For mixed-orientation query vectors, rows follow Yq and columns follow Xq.

## 📄 Description

<b>interp2</b> interpolates 2-D gridded data using meshgrid conventions. The default grid is X=1:size(V,2), Y=1:size(V,1).

<b>interp2(V)</b> refines the default grid once. <b>interp2(V,k)</b> inserts 2^k-1 interpolated points between samples in each dimension; k=0 returns V.

Grid vectors must be strictly monotonic. Complex values are interpolated by real and imaginary parts separately. Without extrapval, out-of-domain queries return NaN for linear, nearest, and cubic methods; makima and spline extrapolate by default.

The cubic-family N-D methods use a native tensor-product four-point stencil, with linear fallback on dimensions that have fewer than four samples.

## 💡 Examples

```matlab
V = [1 2; 3 4];
interp2(V, 1.5, 1.5)
```

```matlab
V = [1 2; 3 4];
Vq = interp2(V, 1)
```

```matlab
V = [1 2; 3 4];
Vq = interp2(V, 0, 1.5, 'linear', -1)
```

```matlab
[X,Y] = meshgrid(-3:3);
V = peaks(X,Y);
[Xq,Yq] = meshgrid(-3:0.5:3);
Vq = interp2(X,Y,V,Xq,Yq,'linear');
```

## 🔗 See also

[interp1](../special_functions/interp1.md), [interp3](../special_functions/interp3.md), [interpn](../special_functions/interpn.md), [meshgrid](../elementary_functions/meshgrid.md).

<!--
## 👤 Author

Allan CORNET
-->
