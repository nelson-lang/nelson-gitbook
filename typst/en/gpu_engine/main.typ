#import "nelson_help.typ": *

= GPU computing

The GPU engine module runs array computations on the GPU through WebGPU (Dawn), portably on Windows, Linux and macOS without a proprietary CUDA dependency.

 Arrays are moved to the device with #strong[gpuArray]; and back to the host with #strong[gather];. Operators and many functions are overloaded so that expressions on a #strong[gpuArray]; run on the device and keep their result device-resident.

 Device arrays are stored in single precision (WebGPU has no double compute type yet); real, logical and complex data are supported. Use #strong[canUseGPU]; to check availability and #strong[gpuDevice]; to inspect the selected device.

 Many functions are supported on a #strong[gpuArray];: the operators, the element-wise math functions (including the rounding and hyperbolic\/inverse-trigonometric ones), the reductions and scans (#strong[sum];, #strong[prod];, #strong[mean];, #strong[var];, #strong[std];, #strong[cumsum];, #strong[cumprod];, #strong[sort];, #strong[find];), the complex-extraction functions, the shape and predicate functions, and the constructors #strong[zeros];\/#strong[ones];\/#strong[rand];\/#strong[randn]; through the #strong['gpuArray']; \/ #strong['like']; forms. Call #strong[gpuArrayFunctions]; for the exact, always-current list.

== Functions

- #nlink(<gpu_engine:canUseGPU>)[canUseGPU]: Determine whether a compatible GPU is available.
- #nlink(<gpu_engine:gather>)[gather]: Transfer a gpuArray to the host workspace.
- #nlink(<gpu_engine:gpuArray>)[gpuArray]: Copy an array to the GPU device.
- #nlink(<gpu_engine:gpuArrayFunctions>)[gpuArrayFunctions]: List the functions that support gpuArray.
- #nlink(<gpu_engine:gpuDevice>)[gpuDevice]: Query the selected GPU device.
- #nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount]: Number of compatible GPU devices.
- #nlink(<gpu_engine:isgpuarray>)[isgpuarray]: Determine whether a value is a gpuArray.


#nested[
#pagebreak(weak: true)
#include "canUseGPU.typ"
#pagebreak(weak: true)
#include "gather.typ"
#pagebreak(weak: true)
#include "gpuArray.typ"
#pagebreak(weak: true)
#include "gpuArrayFunctions.typ"
#pagebreak(weak: true)
#include "gpuDevice.typ"
#pagebreak(weak: true)
#include "gpuDeviceCount.typ"
#pagebreak(weak: true)
#include "isgpuarray.typ"
]
