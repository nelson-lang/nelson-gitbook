# imgaussfilt3

Filter a 3-D volume with a Gaussian kernel.

## 📝 Syntax

- B = imgaussfilt3(A)
- B = imgaussfilt3(A, sigma)
- B = imgaussfilt3(\_\_, 'FilterSize', filterSize)
- B = imgaussfilt3(\_\_, 'Padding', pad)
- B = imgaussfilt3(\_\_, 'FilterDomain', domain)

## 📥 Input argument

- A - Numeric or logical 3-D volume. Complex numeric volumes are filtered by applying the same separable kernel to real and imaginary parts.
- sigma - Standard deviation of the Gaussian kernel. It can be a positive scalar or a three-element vector. The default value is 0.5.
- 'FilterSize' - Odd positive scalar or three-element vector that specifies the kernel size. By default the size is derived from sigma.
- 'Padding' - Boundary handling mode: 'replicate', 'symmetric', 'circular', or a finite scalar fill value.
- 'FilterDomain' - Accepted for compatibility. The current implementation uses spatial separable convolution.

## 📤 Output argument

- B - Filtered 3-D volume with the same size as A.

## 📄 Description


Filter a numeric or logical 3-D volume with a separable Gaussian kernel. Complex numeric volumes are supported by filtering real and imaginary parts consistently. Sigma can be scalar or a three-element vector. Padding can be replicate, symmetric, circular, or a finite scalar value.

## 💡 Example

Smooth a synthetic 3-D volume

```matlab
V = zeros(21, 21, 9);
V(8:14, 8:14, 4:6) = 1;
B = imgaussfilt3(V, 1.0, 'FilterSize', [5 5 5], 'Padding', 0);
B(:, :, 5)
```


## 🔗 See also

[imgaussfilt](../../../image_processing/1_image_basics/3_filtering_edges/imgaussfilt.md), [imref3d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref3d.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
