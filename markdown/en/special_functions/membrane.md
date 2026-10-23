# membrane

Eigenfunctions of the L-shaped membrane.

## 📝 Syntax

- L = membrane
- L = membrane(k)
- L = membrane(k, n)
- membrane(...)

## 📥 Input argument

- k - a positive integer: the eigenfunction index (default 1).
- n - a positive integer: the grid parameter; the result is (2\*n+1)-by-(2\*n+1) (default 15).

## 📤 Output argument

- L - a (2\*n+1)-by-(2\*n+1) matrix: the k-th eigenfunction sampled on the grid.

## 📄 Description


<b>membrane</b> returns the <b>k</b>-th eigenfunction of the L-shaped membrane, sampled on a square <b>(2\*n+1)</b>-by-<b>(2\*n+1)</b> grid. The domain is the square with one quadrant removed; the value is zero on the boundary and outside that domain. 

The first eigenfunction (<b>k = 1</b>) is the fundamental mode, a single positive bump; higher indices add nodal lines and therefore negative values. The result is normalised so its largest magnitude is 1 with a positive peak. 

Called with no output argument, <b>membrane</b> draws the surface. 

The eigenfunction is obtained from a finite-difference discretisation of the domain solved with a shift-invert eigensolve (<b>eigs</b>) for the smallest eigenvalues.

## Used function(s)

eigs

## 💡 Examples



```matlab
L = membrane(1, 10);
size(L)

```


```matlab
L = membrane(1, 15);
[min(L(:)), max(L(:))]

```
draw the surface

```matlab
f = figure();
surf(membrane(1, 50), 'EdgeColor', 'none');
axis('off');

```


## 🔗 See also

[peaks](../special_functions/peaks.md), [eigs](../linear_algebra/3_eigen_singular_values/eigs.md), [surf](../graphics/1_plots/7_surfaces_volumes_polygons/surf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
