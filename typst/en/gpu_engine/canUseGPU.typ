#import "nelson_help.typ": *

= canUseGPU <gpu_engine:canUseGPU>

Determine whether a compatible GPU is available.

== Syntax

- #raw("tf = canUseGPU()");

== Output argument

/ tf: logical: true when a compatible GPU device is available.

== Description

#strong[tf \= canUseGPU()]; returns #strong[true]; when a compatible GPU device is present and usable, and #strong[false]; otherwise (for example on a machine without a supported Vulkan, Metal or Direct3D 12 backend).

 Use it to write code that runs on the GPU when possible and falls back to the CPU otherwise.


== Example

``````matlab
if canUseGPU()
  A = gpuArray(single(rand(1000)));
else
  A = single(rand(1000));
end
``````


== See also

#nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
