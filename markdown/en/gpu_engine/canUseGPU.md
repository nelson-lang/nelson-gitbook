# canUseGPU

Determine whether a compatible GPU is available.

## 📝 Syntax

- tf = canUseGPU()

## 📤 Output argument

- tf - logical: true when a compatible GPU device is available.

## 📄 Description

<b>tf = canUseGPU()</b> returns <b>true</b> when a compatible GPU device is present and usable, and <b>false</b> otherwise (for example on a machine without a supported Vulkan, Metal or Direct3D 12 backend).

Use it to write code that runs on the GPU when possible and falls back to the CPU otherwise.

## 💡 Example

```matlab
if canUseGPU()
  A = gpuArray(single(rand(1000)));
else
  A = single(rand(1000));
end
```

## 🔗 See also

[gpuDevice](../gpu_engine/gpuDevice.md), [gpuDeviceCount](../gpu_engine/gpuDeviceCount.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
