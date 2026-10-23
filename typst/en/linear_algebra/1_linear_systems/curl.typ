#import "../nelson_help.typ": *

= curl <linear_algebra:1_linear_systems.curl>

Curl and angular velocity of a vector field.

== Syntax

- #raw("curlz = curl(X, Y, U, V)");
- #raw("curlz = curl(U, V)");
- #raw("[curlz, cav] = curl(X, Y, U, V)");
- #raw("[curlx, curly, curlz, cav] = curl(X, Y, Z, U, V, W)");
- #raw("[curlx, curly, curlz, cav] = curl(U, V, W)");

== Input argument

/ X, Y, Z: Grid coordinates, as returned by meshgrid. Optional; a default unit grid is used otherwise.
/ U, V, W: Components of the vector field (same size).

== Output argument

/ curlx, curly, curlz: Components of the curl of the vector field.
/ cav: Angular velocity, equal to half the curl.

== Description

#strong[curl]; computes the curl of a 2-D or 3-D vector field. In two dimensions it returns the single out-of-plane component #strong[curlz];; in three dimensions it returns the three components of the curl. The angular velocity #strong[cav]; is half the curl.

 The partial derivatives are evaluated with #strong[gradient]; on the grid defined by #strong[X];, #strong[Y]; (and #strong[Z];).


== Used function(s)

gradient

== Example

``````matlab
[x, y] = meshgrid(-3:3, -3:3);
u = -y;
v = x;
curlz = curl(x, y, u, v)
``````


== See also

#nlink(<linear_algebra:1_linear_systems.gradient>)[gradient];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
