#import "nelson_help.typ": *

= gpuDevice <gpu_engine:gpuDevice>

Query the selected GPU device.

== Syntax

- #raw("d = gpuDevice()");

== Output argument

/ d: a struct describing the selected GPU device.

== Description

#strong[d \= gpuDevice()]; returns a struct describing the selected GPU device, with the following fields:

 #strong[Index];: the device index.

 #strong[Name];: the adapter name.

 #strong[Vendor];: the hardware vendor.

 #strong[Architecture];: the device architecture.

 #strong[Backend];: the graphics backend in use (Vulkan, Metal or D3D12).

 #strong[MaxBufferSize];: the maximum size in bytes of a single device buffer.

 An error is raised when no compatible GPU device is available.


== Example

``````matlab
if canUseGPU()
  d = gpuDevice()
end
``````


== See also

#nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
