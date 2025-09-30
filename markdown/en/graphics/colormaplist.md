# colormaplist

Provide list of colormaps.

## Syntax

- colormaps = colormaplist()

## Output argument

- colormaps - String vector of colormaps sorted in ascending order.

## Description

<p>
            <b>colormaplist</b> returns the available colormaps as an <b>m</b>-by-<b>1</b> string array.</p>

## Example

```matlab
f = figure('Position', [100, 100, 600, 400], 'Resize', 'off');
ax = axes('Position', [0.1, 0.2, 0.6, 0.7]);
surf(ax, peaks);
cmaps = colormaplist;
listbox = uicontrol('Style', 'listbox', 'Position', [450, 100, 100, 200], 'String', cmaps);
listbox.Callback = @(src, void) colormap(ax, cmaps(src.Value));

```

<img src="colormaplist.svg" align="middle"/>

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.14.0  | initial version |

## Author

Allan CORNET
