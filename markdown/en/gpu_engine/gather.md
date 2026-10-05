# gather

Transfer a gpuArray to the host workspace.

## 📝 Syntax

- A = gather(G)

## 📥 Input argument

- G - a gpuArray, or any host value.

## 📤 Output argument

- A - a host array with the same values and underlying type.

## 📄 Description


<b>A = gather(G)</b> copies the <b>gpuArray</b> <b>G</b> from the device back to the host workspace. The result is a <b>single</b>, <b>logical</b> or complex <b>single</b> array, matching the underlying type of <b>G</b>. 

When <b>G</b> is already a host value, <b>gather</b> returns it unchanged.

## 💡 Example



```matlab
G = gpuArray(single([1 2 3]));
A = gather(G + 1)
```


## 🔗 See also

[gpuArray](../gpu_engine/gpuArray.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
