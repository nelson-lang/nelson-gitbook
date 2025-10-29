# imagesc

Display image from array with scaled colors.

## 📝 Syntax

- imagesc()
- imagesc(C)
- image(X, Y, C)
- imagesc('CData', C)
- imagesc('XData', X, 'YData', Y,'CData', C)
- imagesc(..., propertyName, propertyValue)
- imagesc(parent, ...)
- go = imagesc(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: image type.

## 📄 Description

<b>imagessc</b> displays C data as an image. This image is colormapped using the colormap for the current figure.

Properties:
| Property | Description |
| --- | --- |
| **AlphaData** | Transparency data: scalar, array the same size as CData, or 1 (default). |
| **AlphaDataMapping** | Alpha data mapping method. |
| **CData** | Image color data: vector or matrix, 3-D array of RGB triplets. |
| **CDataMapping** | Color data mapping method: 'direct' or 'scaled' (default). |
| **Children** | []. |
| **Parent** | Parent: axes object. |
| **Tag** | Object identifier: string scalar, character vector, '' (default). |
| **Type** | Type of graphics object: 'surface'. |
| **UserData** | User data: array or [] (default). |
| **Visible** | State of visibility: 'off' or 'on' (default). |
| **XData** | Placement along x-axis: two-element vector, scalar, [1 size(CData, 1)] (default). |
| **YData** | Placement along y-axis: two-element vector, scalar, [1 size(CData, 2)] (default). |
| **CreateFcn** | Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect. |
| **DeleteFcn** | Callback (function handle, string or cell) called when object is deleted. |
| **BeingDeleted** | Flag indicating that the object is being deleted. |

## 💡 Examples

```matlab
f1 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
```

<img src="imagesc_1.png" align="middle"/>

```matlab
f2 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
colormap(gray)
```

<img src="imagesc_2.png" align="middle"/>

## 🔗 See also

[image](../graphics/image.md), [colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

<!--
## 👤 Author

Allan CORNET
-->
