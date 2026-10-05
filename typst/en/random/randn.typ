#import "nelson_help.typ": *

= randn <random:randn>

Normally distributed random number.

== Syntax

- #raw("M = randn");
- #raw("M = randn(n)");
- #raw("M = randn(x1, x2, ... , xN)");
- #raw("M = randn(sz)");
- #raw("M = randn(x1, x2, ... , xN, classname)");
- #raw("M = randn(x1, x2, ... , xN, 'like', var)");

== Input argument

/ n: a variable: n-by-n matrix will be generated.
/ x1, x2, ... , xN: x1-by-...-by-xN values
/ classname: a string: 'single' or 'double'
/ var: a variable: single or double

== Output argument

/ M: a matrix of random numbers.

== Description

#strong[randn]; returns a matrix with normally distributed random elements having zero mean and variance one.

 By default, #strong[randn]; uses the ziggurat algorithm.

 seed can be modified using #strong[rng];.


== Examples

``````matlab
rng('default');
randn
rng('default');
randn

``````

``````matlab
rng('default');
randn(6)

``````

``````matlab
rng('default');
randn(3, 2, 3)

``````

``````matlab
rng('default');
randn(3, 2, 'single')

``````

``````matlab
rng('default');
v = single([3, 3]);
randn(3, 2, 'like', v)

``````


== See also

#nlink(<random:rng>)[rng];, #nlink(<random:randn>)[randn];, #nlink(<constructors_functions:eye>)[eye];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], [Algo reworked],
)

// Author: Allan CORNET
