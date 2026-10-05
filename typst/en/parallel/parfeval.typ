#import "nelson_help.typ": *

= parfeval <parallel:parfeval>

Run function in background.

== Syntax

- #raw("f = parfeval(bPool, fptr, n, x1, ..., xm)");

== Input argument

/ bPool: backgroundPool object returned by backgroundPool().
/ fptr: Function handle: Function to run.
/ n: Number of output arguments.
/ x1, ..., xm: Input arguments, specified as a comma-separated list of variables or expressions.

== Output argument

/ f: FevalFuture object.

== Description

#strong[f \= parfeval(bPool, fptr, n, x1, ..., xm)]; starts the function fptr to run in the background.

 backgroundPool has#strong[NumWorkers]; available. If there are more functions scheduled, functions wait than one entry is available in pool.

 #strong[parfeval]; runs the function#strong[fptr]; on a background worker.


== Example

``````matlab
b = backgroundPool()
fptr = str2func('cos');
f = parfeval(b, fptr, 1, 5);
r = fetchOutputs(f)
``````


== See also

#nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<functions_manager:feval>)[feval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
