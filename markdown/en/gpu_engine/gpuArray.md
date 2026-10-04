# gpuArray

Copy an array to the GPU device.

## 📝 Syntax

- G = gpuArray(A)

## 📥 Input argument

- A - a real, logical, complex or small-integer numeric array.

## 📤 Output argument

- G - a gpuArray stored on the device.

## 📄 Description

<b>G = gpuArray(A)</b> copies the array <b>A</b> to the GPU and returns a <b>gpuArray</b> object. Operations on <b>G</b> run on the device; use <b>gather</b> to bring the result back to the host.

The device stores data in single precision: a <b>double</b> input is downcast to <b>single</b>. Real, <b>logical</b> and complex inputs are supported; sparse inputs are not.

The small integer classes <b>int8</b>, <b>uint8</b>, <b>int16</b> and <b>uint16</b> are preserved: their values are exact in single precision, arithmetic saturates to the class range and <b>gather</b> returns the original class.

<b>int32</b> and <b>uint32</b> are also preserved (stored as raw 32-bit integer bits): round-trip, saturating <b>+</b>, <b>-</b>, <b>.\*</b>, <b>./</b>, <b>.\\</b>, unary minus, <b>abs</b>, <b>max</b>/<b>min</b> (element-wise and reductions), <b>sum</b>, <b>prod</b>, <b>mean</b>, <b>cumsum</b>, <b>cumprod</b>, <b>sort</b>, <b>find</b>, integer power (<b>.^</b> with a non-negative exponent), relational operators and the reshaping/indexing operations are supported. Operations that have no integer meaning (the transcendental elementwise math functions) raise a clear error. The 64-bit integer classes are not supported.

A compatible GPU is required (see <b>canUseGPU</b>).

A device array can also be created directly with <b>zeros(sz, 'gpuArray')</b> / <b>ones(sz, 'gpuArray')</b>, or with the <b>'like'</b> form <b>zeros(sz, 'like', G)</b> where <b>G</b> is a gpuArray.

## 💡 Example

```matlab
A = single(rand(1000));
G = gpuArray(A);
R = gather(G .* G + sqrt(G));
class(G)
```

## 🔗 See also

[gather](../gpu_engine/gather.md), [isgpuarray](../gpu_engine/isgpuarray.md), [canUseGPU](../gpu_engine/canUseGPU.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
