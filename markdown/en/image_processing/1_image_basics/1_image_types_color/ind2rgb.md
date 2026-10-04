# ind2rgb

Convert indexed image to RGB using a colormap.

## 📝 Syntax

- RGB = ind2rgb(X, map)

## 📥 Input argument

- X - Indexed image. Integer and logical arrays use zero-based indices; double and single arrays use one-based indices.
- map - Colormap with at least three columns.

## 📤 Output argument

- RGB - Double RGB image built from the first three columns of map.

## 📄 Description

Convert indexed image to RGB using the first three columns of a colormap. Integer and logical indexed images use zero-based indices. Double and single indexed images use one-based indices. Integer-valued indices outside the colormap range are clamped to the nearest valid row. Empty indexed images return an empty RGB array.

## 💡 Examples

Convert indexed image to RGB

```matlab
X=repmat(uint8(0:63),64,1);
v=linspace(0,1,64)'; map=[v 1-v 0.5*ones(64,1)];
RGB=ind2rgb(X,map);
figure; image(RGB); title('Indexed to RGB');
```

<img src="ind2rgb_1.png" align="middle"/>
Clamp indices outside the colormap range

```matlab
map=[1 0 0; 0 1 0; 0 0 1];
RGB=ind2rgb([0 1 2 5],map)
```

## 🔗 See also

[ind2gray](../../../image_processing/ind2gray.md), [rgb2gray](../../../image_processing/rgb2gray.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
