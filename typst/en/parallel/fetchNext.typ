#import "nelson_help.typ": *

= fetchNext <parallel:fetchNext>

Retrieve next unread outputs from FevalFuture array.

== Syntax

- #raw("[idx, y1, ... , ym] = fetchNext(f)");
- #raw("[idx, y1, ... , ym] = fetchNext(f, timeout)");

== Input argument

/ f: FevalFuture object
/ timeout: timeout seconds: waits for a maximum of timeout seconds for a result in f to become available.

== Output argument

/ idx: Index of the FevalFuture array, returned as an integer scalar.
/ y1, ... , ym: outputs

== Description

#strong[\[idx, y1, ... , ym\] \= fetchNext(f)]; retrieves index #strong[idx]; of the new readable #strong[FevalFuture]; object in the array #strong[f]; that is finished, and #strong[m]; results from that FevalFuture as #strong[Y1, ... , Ym];.

 


== Example

``````matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

``````


== See also

#nlink(<parallel:parfeval>)[parfeval];, #nlink(<parallel:fetchOutputs>)[fetchOutputs];, #nlink(<parallel:backgroundPool>)[backgroundPool];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
