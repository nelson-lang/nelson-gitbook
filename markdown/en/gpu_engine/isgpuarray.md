# isgpuarray

Determine whether a value is a gpuArray.

## 📝 Syntax

- tf = isgpuarray(A)

## 📥 Input argument

- A - any value.

## 📤 Output argument

- tf - logical: true when <b>A</b> is a gpuArray.

## 📄 Description

<b>tf = isgpuarray(A)</b> returns <b>true</b> when <b>A</b> is a <b>gpuArray</b> stored on the device, and <b>false</b> otherwise.

## 💡 Example

```matlab
isgpuarray(gpuArray(single(1)))
isgpuarray(single(1))
```

## 🔗 See also

[gpuArray](../gpu_engine/gpuArray.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
