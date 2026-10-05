#import "nelson_help.typ": *

= wait <parallel:wait>

Wait for futures to be completed.

== Syntax

- #raw("wait(f)");
- #raw("wait(f, state)");
- #raw("TF = wait(f, state, timeout)");

== Input argument

/ f: FevalFuture object: scalar or array.
/ state: state to wait: 'finished' (default) or 'running'
/ timeout: seconds to wait: real numeric scalar.

== Output argument

/ TF: logical: If each element of the Future array f finishes before timeout seconds elapse, TF is true. Otherwise, TF is false.

== Description

#strong[wait(f)]; pauses execution until each element of the Future array#strong[f]; is finished.

 #strong[wait(f, state)]; pauses execution until each element of the Future array#strong[f]; has its 'State' property set to state.

 #strong[tf \= wait(f, state, timeout)]; pauses execution for a maximum of timeout seconds.


== Example

``````matlab
fptr = str2func('pause');
for i = 1:15
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
tic()
R = wait(f, 'finished');
toc()
``````


== See also

#nlink(<core:pause>)[pause];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
