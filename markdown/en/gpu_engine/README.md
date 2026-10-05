# GPU computing


    
The GPU engine module runs array computations on the GPU through WebGPU (Dawn), portably on Windows, Linux and macOS without a proprietary CUDA dependency.

    
Arrays are moved to the device with **gpuArray** and back to the host with **gather**. Operators and many functions are overloaded so that expressions on a **gpuArray** run on the device and keep their result device-resident.

    
Device arrays are stored in single precision (WebGPU has no double compute type yet); real, logical and complex data are supported. Use **canUseGPU** to check availability and **gpuDevice** to inspect the selected device.

    
Many functions are supported on a **gpuArray**: the operators, the element-wise math functions (including the rounding and hyperbolic/inverse-trigonometric ones), the reductions and scans (**sum**, **prod**, **mean**, **var**, **std**, **cumsum**, **cumprod**, **sort**, **find**), the complex-extraction functions, the shape and predicate functions, and the constructors **zeros**/**ones**/**rand**/**randn** through the **'gpuArray'** / **'like'** forms. Call **gpuArrayFunctions** for the exact, always-current list.

  

## Functions

- [canUseGPU](canUseGPU.md) - Determine whether a compatible GPU is available.
- [gather](gather.md) - Transfer a gpuArray to the host workspace.
- [gpuArray](gpuArray.md) - Copy an array to the GPU device.
- [gpuArrayFunctions](gpuArrayFunctions.md) - List the functions that support gpuArray.
- [gpuDevice](gpuDevice.md) - Query the selected GPU device.
- [gpuDeviceCount](gpuDeviceCount.md) - Number of compatible GPU devices.
- [isgpuarray](isgpuarray.md) - Determine whether a value is a gpuArray.

