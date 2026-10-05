#import "nelson_help.typ": *

= cancel <parallel:cancel>

Stop function running in the background.

== Syntax

- #raw("cancel(f)");

== Input argument

/ f: FevalFuture object: scalar or array.

== Description

#strong[cancel(f)]; will stop each running or queued element of the Future array #strong[f];.

 Future cancelled Findicates an error as property.

 Some functions cannot be interrupted by pressing#strong[Ctrl+C]; or #strong[cancel];, such as #strong[save]; function.


== Example

``````matlab
fptr = str2func('pause');
for i = 1:100
 f(i) = parfeval(backgroundPool, fptr, 0, 5);
end
f(70)
cancel(f(70))
f(70)
``````


== See also

#nlink(<core:pause>)[pause];, #nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:wait>)[wait];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
