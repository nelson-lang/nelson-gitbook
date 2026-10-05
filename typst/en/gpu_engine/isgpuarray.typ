#import "nelson_help.typ": *

= isgpuarray <gpu_engine:isgpuarray>

Determine whether a value is a gpuArray.

== Syntax

- #raw("tf = isgpuarray(A)");

== Input argument

/ A: any value.

== Output argument

/ tf: logical: true when #strong[A]; is a gpuArray.

== Description

#strong[tf \= isgpuarray(A)]; returns #strong[true]; when #strong[A]; is a #strong[gpuArray]; stored on the device, and #strong[false]; otherwise.


== Example

``````matlab
isgpuarray(gpuArray(single(1)))
isgpuarray(single(1))
``````


== See also

#nlink(<gpu_engine:gpuArray>)[gpuArray];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
