#import "nelson_help.typ": *

= gpuArray <gpu_engine:gpuArray>

Copy an array to the GPU device.

== Syntax

- #raw("G = gpuArray(A)");

== Input argument

/ A: a real, logical, complex or small-integer numeric array.

== Output argument

/ G: a gpuArray stored on the device.

== Description

#strong[G \= gpuArray(A)]; copies the array #strong[A]; to the GPU and returns a #strong[gpuArray]; object. Operations on #strong[G]; run on the device; use #strong[gather]; to bring the result back to the host.

 The device stores data in single precision: a #strong[double]; input is downcast to #strong[single];. Real, #strong[logical]; and complex inputs are supported; sparse inputs are not.

 The small integer classes #strong[int8];, #strong[uint8];, #strong[int16]; and #strong[uint16]; are preserved: their values are exact in single precision, arithmetic saturates to the class range and #strong[gather]; returns the original class.

 #strong[int32]; and #strong[uint32]; are also preserved (stored as raw 32-bit integer bits): round-trip, saturating #strong[+];, #strong[-];, #strong[.\*];, #strong[.\/];, #strong[.\\];, unary minus, #strong[abs];, #strong[max];\/#strong[min]; (element-wise and reductions), #strong[sum];, #strong[prod];, #strong[mean];, #strong[cumsum];, #strong[cumprod];, #strong[sort];, #strong[find];, integer power (#strong[.^]; with a non-negative exponent), relational operators and the reshaping\/indexing operations are supported. Operations that have no integer meaning (the transcendental elementwise math functions) raise a clear error. The 64-bit integer classes are not supported.

 A compatible GPU is required (see #strong[canUseGPU];).

 A device array can also be created directly with #strong[zeros(sz, 'gpuArray')]; \/ #strong[ones(sz, 'gpuArray')];, or with the #strong['like']; form #strong[zeros(sz, 'like', G)]; where #strong[G]; is a gpuArray.


== Example

``````matlab
A = single(rand(1000));
G = gpuArray(A);
R = gather(G .* G + sqrt(G));
class(G)
``````


== See also

#nlink(<gpu_engine:gather>)[gather];, #nlink(<gpu_engine:isgpuarray>)[isgpuarray];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
