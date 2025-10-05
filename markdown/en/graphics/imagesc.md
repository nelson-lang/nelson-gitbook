# imagesc

Display image from array with scaled colors.

## Syntax

- imagesc()
- imagesc(C)
- image(X, Y, C)
- imagesc('CData', C)
- imagesc('XData', X, 'YData', Y,'CData', C)
- imagesc(..., propertyName, propertyValue)
- imagesc(parent, ...)
- go = imagesc(...)

## Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- C - Color array: m-by-n-by-3 array of RGB triplets.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- go - a graphics object: image type.

## Description

<p>
            <b>imagessc</b> displays C data as an image. This image is colormapped using the colormap for the current figure.</p>
<p>Properties:</p>
<p></p>
<p>
                <b>AlphaData</b> Transparency data: scalar, array the same size as CData, or 1 (default).</p>
<p>
                    <b>AlphaDataMapping</b>
                </p>
<p>
                    <b>CData</b> Image color data: vector or matrix, 3-D array of RGB triplets.</p>
<p>
                        <b>CDataMapping</b> Color data mapping method: 'direct' or 'scaled' (default).</p>
<p>
                            <b>Children</b> [].</p>
<p>
                                <b>Parent</b> Parent: axes object.</p>
<p>
                                    <b>Tag</b> Object identifier: string scalar, character vector, '' (default).</p>
<p>
                                        <b>Type</b> Type of graphics object: 'surface'.</p>
<p>
                                            <b>UserData</b>: User data: array or [] (default).</p>
<p>
                                                <b>Visible</b> State of visibility: 'off' or 'on' (default).</p>
<p>
                                                    <b>XData</b> Placement along x-axis: two-element vector, scalar, [1 size(CData, 1)] (default).</p>
<p>
                                                        <b>YData</b> Placement along y-axis: two-element vector, scalar, [1 size(CData, 2)] (default).</p>
<p></p>
<p>
                                                            <b>CreateFcn</b>Callback (function handle, string or cell) called when object is created.
Set this property on an existing component has no effect.</p>
<p>
                                                                <b>DeleteFcn</b>Callback (function handle, string or cell) called when object is deleted.</p>
<p>
                                                                    <b>BeingDeleted</b> Flag indicating that the object is being deleted.</p>

## Examples

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

## See also

[image](../graphics/image.md), [colormap](../graphics/colormap.md).

## History

| Version | Description                          |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## Author

Allan CORNET
