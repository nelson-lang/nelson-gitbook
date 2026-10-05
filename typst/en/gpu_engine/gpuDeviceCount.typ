#import "nelson_help.typ": *

= gpuDeviceCount <gpu_engine:gpuDeviceCount>

Number of compatible GPU devices.

== Syntax

- #raw("n = gpuDeviceCount()");

== Output argument

/ n: double: the number of compatible GPU devices detected (0 when none).

== Description

#strong[n \= gpuDeviceCount()]; returns the number of compatible GPU devices available on the system. A value of #strong[0]; means no supported device was found.


== Example

``````matlab
gpuDeviceCount()
``````


== See also

#nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
