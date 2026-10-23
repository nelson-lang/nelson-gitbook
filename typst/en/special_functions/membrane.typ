#import "nelson_help.typ": *

= membrane <special_functions:membrane>

Eigenfunctions of the L-shaped membrane.

== Syntax

- #raw("L = membrane");
- #raw("L = membrane(k)");
- #raw("L = membrane(k, n)");
- #raw("membrane(...)");

== Input argument

/ k: a positive integer: the eigenfunction index (default 1).
/ n: a positive integer: the grid parameter; the result is (2\*n+1)-by-(2\*n+1) (default 15).

== Output argument

/ L: a (2\*n+1)-by-(2\*n+1) matrix: the k-th eigenfunction sampled on the grid.

== Description

#strong[membrane]; returns the #strong[k];-th eigenfunction of the L-shaped membrane, sampled on a square #strong[(2\*n+1)];-by-#strong[(2\*n+1)]; grid. The domain is the square with one quadrant removed; the value is zero on the boundary and outside that domain.

 The first eigenfunction (#strong[k \= 1];) is the fundamental mode, a single positive bump; higher indices add nodal lines and therefore negative values. The result is normalised so its largest magnitude is 1 with a positive peak.

 Called with no output argument, #strong[membrane]; draws the surface.

 The eigenfunction is obtained from a finite-difference discretisation of the domain solved with a shift-invert eigensolve (#strong[eigs];) for the smallest eigenvalues.


== Used function(s)

eigs

== Examples

``````matlab
L = membrane(1, 10);
size(L)

``````

``````matlab
L = membrane(1, 15);
[min(L(:)), max(L(:))]

``````

draw the surface

``````matlab
f = figure();
surf(membrane(1, 50), 'EdgeColor', 'none');
axis('off');

``````


== See also

#nlink(<special_functions:peaks>)[peaks];, #nlink(<linear_algebra:3_eigen_singular_values.eigs>)[eigs];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
