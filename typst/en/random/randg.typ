#import "nelson_help.typ": *

= randg <random:randg>

Gamma distributed random number.

== Syntax

- #raw("M = randg");
- #raw("M = randg(A)");
- #raw("M = randg(A, n)");
- #raw("M = randg(A, x1, x2, ... , xN)");
- #raw("M = randg(A, sz)");
- #raw("M = randg(A, x1, x2, ... , xN, classname)");

== Input argument

/ A: a real nonnegative value or array: the shape parameter(s).
/ n: a variable: n-by-n matrix will be generated.
/ x1, x2, ... , xN: x1-by-...-by-xN values
/ classname: a string: 'single' or 'double'

== Output argument

/ M: a matrix of random numbers.

== Description

#strong[randg]; returns a matrix with gamma distributed random elements, with shape parameter #strong[A]; and unit scale.

 A gamma sample of shape #strong[k]; has mean #strong[k]; and variance #strong[k];; a shape of 1 gives the standard exponential distribution.

 When only #strong[A]; is supplied, the result has the size of #strong[A]; and each element uses the matching shape. When a size is supplied, #strong[A]; must be a scalar used for every element.

 Values are drawn with the Marsaglia and Tsang rejection method; the seed can be modified using #strong[rng];.


== Bibliography

G. Marsaglia and W. W. Tsang, "A simple method for generating gamma variables", ACM Transactions on Mathematical Software, 26(3), 363-372, 2000.

== Examples

``````matlab
rng('default');
randg

``````

``````matlab
rng('default');
randg(2, 3)

``````

``````matlab
rng('default');
M = randg(3, 1, 100000);
[mean(M), var(M)]

``````

``````matlab
rng('default');
randg(2, 2, 2, 'single')

``````


== See also

#nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<random:rng>)[rng];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
