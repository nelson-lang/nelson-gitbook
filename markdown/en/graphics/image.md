# image

Display image from array.

## 📝 Syntax

- image()
- image(C)
- image(X, Y, C)
- image('CData', C)
- image('XData', X, 'YData', Y,'CData', C)
- image(..., propertyName, propertyValue)
- image(parent, ...)
- go = image(...)

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

<b>image</b> displays C data as an image.

Properties:
| Property | Description |
| --- | --- |
| **AlphaData** | Transparency data: scalar, array the same size as CData, or 1 (default). |
| **AlphaDataMapping** | Alpha data mapping method. |
| **CData** | Image color data: vector or matrix, 3-D array of RGB triplets. |
| **CDataMapping** | Color data mapping method: 'scaled' or 'direct' (default). |
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
f = figure();
L = linspace(0, 1);
R = L' * L;
G = L' * (L .^ 2);
B = L' * (0 *L + 1);
C(:, :, 1) = G;
C(:, :, 2) = G;
C(:, :, 3) = B;
im = image(C)
```

<img src="image_1.svg" align="middle"/>

```matlab
f = figure();
image();
```

<img src="image_2.svg" align="middle"/>

## 🔗 See also

[imagesc](../graphics/imagesc.md), [colormap](../graphics/colormap.md).

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
