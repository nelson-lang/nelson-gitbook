# gpuDeviceCount

Number of compatible GPU devices.

## 📝 Syntax

- n = gpuDeviceCount()

## 📤 Output argument

- n - double: the number of compatible GPU devices detected (0 when none).

## 📄 Description

<b>n = gpuDeviceCount()</b> returns the number of compatible GPU devices available on the system. A value of <b>0</b> means no supported device was found.

## 💡 Example

```matlab
gpuDeviceCount()
```

## 🔗 See also

[gpuDevice](../gpu_engine/gpuDevice.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
