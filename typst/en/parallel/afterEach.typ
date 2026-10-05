#import "nelson_help.typ": *

= afterEach <parallel:afterEach>

Run function after each function finish running in the background.

== Syntax

- #raw("B = afterEach(F, fcn, n)");

== Input argument

/ F: Input Future object (scalar or array).
/ fcn: Function handle: Function to run after all input futures.
/ n: Number of output arguments.

== Output argument

/ B: AfterEachFuture object.

== Description

#strong[B \= afterEach(F, fcn, n)]; returns a AfterEachFuture object#strong[B];.

 Function#strong[fcn]; is automatically run after each element in the Future array#strong[F]; was finished.

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

#nlink(<parallel:backgroundPool>)[backgroundPool];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<parallel:afterAll>)[afterAll];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
