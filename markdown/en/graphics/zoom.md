# zoom

Enable zoom mode.

## 📝 Syntax

- zoom
- zoom option
- zoom(factor)
- zoom(fig, ...)
- zoom(ax, ...)

## 📥 Input argument

- option - string: 'on', 'off', 'reset', 'out', 'xon', 'yon' or 'toggle'.
- factor - positive number: To zoom in, indicate a factor greater than 1. To zoom out, specify a factor between 0 and 1. When zooming out, the axes will zoom out by a factor of 1/factor.
- fig - Figure object: Target figure
- ax - a scalar graphics object value: parent container, specified as a axes.

## 📄 Description

Utilize the zoom mode to dynamically adjust axis limits for interactive data exploration.

Enable or disable the zoom mode and configure additional basic settings using the zoom function.

Zoom mode is compatible with various charts like line, bar, histogram, and surface charts. These charts typically feature zoom in and zoom out icons on the toolbar to facilitate zooming functionality.

<b>zoom option</b> configures the zoom mode for all axes within the current figure.

For instance, <b>zoom('on')</b> activates zoom mode, <b>zoom('xon')</b> enables zoom mode exclusively for the x-dimension, while <b>zoom('off')</b> disables zoom mode altogether.

Once zoom mode is active, you can adjust the view of axes using the cursor, scroll wheel, or keyboard:

Cursor: Click to zoom in at the cursor position; Drag to zoom into a rectangular region.

Scroll wheel: Scroll up to zoom in, scroll down to zoom out.

Keyboard: Press the up arrow (↑) key to zoom in, and the down arrow (↓) key to zoom out.

The zoom mode option can be specified using one of the following values:

<b>'toggle'</b>: Toggles the zoom mode. If zoom mode is disabled, 'toggle' reverts to the most recently used zoom option of 'on', 'xon', or 'yon'. This option behaves the same as calling zoom without any arguments.

<b>'xon'</b>: Enables zoom mode for the x-dimension exclusively.

<b>'yon'</b>: Activates zoom mode for the y-dimension exclusively.

<b>'on'</b>: Activates zoom mode.

<b>'off'</b>: Deactivates zoom mode. Note that certain default interactions may persist regardless of the interaction mode.

<b>'reset'</b>: Establishes the current zoom level as the base zoom level. Once set, subsequent actions like zooming out, double-clicking within the axes, or clicking the <b>Restore View</b> icon on the axes toolbar will revert the axes to this baseline zoom level.

<b>'out'</b>: Restores the current axes to its baseline zoom level.

## 💡 Example

```matlab
surf(peaks)
zoom on
zoom reset
zoom(1.5);
sleep(5);
zoom out
```

## 🔗 See also

[rotate3d](../graphics/rotate3d.md), [pan](../graphics/pan.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.2.0   | initial version |

## 👤 Author

Allan CORNET
