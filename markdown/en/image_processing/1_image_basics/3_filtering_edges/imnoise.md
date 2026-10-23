# imnoise

Add noise to an image.

## 📝 Syntax

- B = imnoise(A, 'gaussian')
- B = imnoise(A, 'gaussian', m, v)
- B = imnoise(A, 'salt & pepper', d)
- B = imnoise(A, 'speckle', v)
- B = imnoise(A, 'poisson')

## 📥 Input argument

- A - Input image (double, single, uint8, uint16 or int16).
- type - Noise type: 'gaussian', 'salt & pepper', 'speckle' or 'poisson'.
- m, v, d - Mean/variance (gaussian), variance (speckle) or density (salt & pepper).

## 📤 Output argument

- B - Noisy image, same class as A.

## 📄 Description


<b>imnoise</b> adds noise of the chosen type to an image. The image is processed in double precision on the range [0, 1] and returned in the class of <b>A</b>. Gaussian noise has mean <b>m</b> (default 0) and variance <b>v</b> (default 0.01); salt & pepper affects a fraction <b>d</b>(default 0.05) of the pixels; speckle is multiplicative noise <b>B = A + A.\*n</b> with variance <b>v</b> (default 0.04); poisson draws Poisson-distributed values from the image intensities.

## Used function(s)

randn, poissrnd

## 💡 Example



```matlab
A = 0.5 * ones(100, 100);
B = imnoise(A, 'gaussian', 0, 0.02);
```


## 🔗 See also

[imresize](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imresize.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
