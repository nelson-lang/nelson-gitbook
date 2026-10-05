#import "nelson_help.typ": *

= afterAll <parallel:afterAll>

Run function after all functions finish running in the background.

== Syntax

- #raw("B = afterAll(F, fcn, n)");

== Input argument

/ F: Input Future object (scalar or array).
/ fcn: Function handle: Function to run after all input futures.
/ n: Number of output arguments.

== Output argument

/ B: AfterAllFuture object.

== Description

#strong[B \= afterAll(F, fcn, n)]; returns a AfterAllFuture object#strong[B];.

 Function#strong[fcn]; is automatically run after all elements in the Future array#strong[F]; were finished.

 If any of the elements in #strong[F]; encounters an error, the #strong[Error]; property of #strong[B]; contains an error.


== Example

``````matlab
pool = backgroundPool()
fptrRand = str2func('rand')
fptrMax = str2func('@(r) max(r)')
fptrMin = str2func('@(r) min(r)')
for idx= 1:10
    f(idx) = parfeval(pool, fptrRand, 1, 1000, 1);
end
maxFuture = afterEach(f, fptrMax, 1);
minFuture = afterAll(maxFuture, fptrMin, 1);
fetchOutputs(minFuture)
fetchOutputs(maxFuture)
``````


== See also

#nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<parallel:afterEach>)[afterEach];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
