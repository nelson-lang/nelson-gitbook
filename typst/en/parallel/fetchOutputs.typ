#import "nelson_help.typ": *

= fetchOutputs <parallel:fetchOutputs>

Retrieve results from function running in the background pool.

== Syntax

- #raw("[y1, ... , ym] = fetchOutputs(f)");

== Input argument

/ f: FevalFuture object

== Output argument

/ y1, ... , ym: outputs

== Description

#strong[\[y1, ... , ym\] \= fetchOutputs(f)]; retrieves #strong[m]; results from a #strong[Future]; array #strong[f];.

 

 #strong[fetchOutputs]; waits for the function associated to #strong[f]; to finish before retrieving results.

 If #strong[fetchOutputs]; is called, Read property of each element in #strong[f]; is set to true.


== Examples

Sequential version

``````matlab

tic()
R1 = magic(5000);
R2 = magic(5000);
toc()
size(R1)

``````

Parallel version

``````matlab

b = backgroundPool()
tic()
fptr = str2func('magic');
f1 = parfeval(b, fptr, 1, 5000);
f2 = parfeval(b, fptr, 1, 5000);
b
r1 = fetchOutputs(f1);
r2 = fetchOutputs(f2);
toc()
size(r1)
f1
f2
``````


== See also

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchNext>)[fetchNext];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
