#import "nelson_help.typ": *

= gather <gpu_engine:gather>

Transfer a gpuArray to the host workspace.

== Syntax

- #raw("A = gather(G)");

== Input argument

/ G: a gpuArray, or any host value.

== Output argument

/ A: a host array with the same values and underlying type.

== Description

#strong[A \= gather(G)]; copies the #strong[gpuArray]; #strong[G]; from the device back to the host workspace. The result is a #strong[single];, #strong[logical]; or complex #strong[single]; array, matching the underlying type of #strong[G];.

 When #strong[G]; is already a host value, #strong[gather]; returns it unchanged.


== Example

``````matlab
G = gpuArray(single([1 2 3]));
A = gather(G + 1)
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
