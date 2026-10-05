#import "nelson_help.typ": *

= cancelAll <parallel:cancelAll>

Stop all functions running in the background.

== Syntax

- #raw("cancel(fevalQueue)");

== Input argument

/ fevalQueue: FevalQueue object: scalar.

== Description

#strong[cancelAll(fevalQueue)]; stops all running or queued elements of the background pool.


== Example

``````matlab
fptr = str2func('pause');
pool = backgroundPool;
pool.FevalQueue
f = parfeval(pool, fptr, 0, Inf);
f
pool.FevalQueue
cancelAll(pool.FevalQueue)
pool.FevalQueue
f
``````


== See also

#nlink(<core:pause>)[pause];, #nlink(<parallel:cancel>)[cancel];, #nlink(<parallel:parfeval>)[parfeval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
