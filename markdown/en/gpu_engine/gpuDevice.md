# gpuDevice

Query the selected GPU device.

## 📝 Syntax

- d = gpuDevice()

## 📤 Output argument

- d - a struct describing the selected GPU device.

## 📄 Description


<b>d = gpuDevice()</b> returns a struct describing the selected GPU device, with the following fields: 

<b>Index</b>: the device index. 

<b>Name</b>: the adapter name. 

<b>Vendor</b>: the hardware vendor. 

<b>Architecture</b>: the device architecture. 

<b>Backend</b>: the graphics backend in use (Vulkan, Metal or D3D12). 

<b>MaxBufferSize</b>: the maximum size in bytes of a single device buffer. 

An error is raised when no compatible GPU device is available.

## 💡 Example



```matlab
if canUseGPU()
  d = gpuDevice()
end
```


## 🔗 See also

[gpuDeviceCount](../gpu_engine/gpuDeviceCount.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
