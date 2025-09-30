# rotate3d

Enable rotate mode.

## Syntax

- rotate3d
- rotate3d option
- rotate3d(fig, ...)
- rotate3d(ax, ...)

## Input argument

- option - string: 'on', 'off' or 'toggle'.
- fig - Figure object: Target figure
- ax - a scalar graphics object value: parent container, specified as a axes.

## Description

<p>Utilize rotate mode to interactively rotate the 3-D view of the axes for data exploration. Enable or disable rotate mode and configure additional basic options using the rotate3d function.</p>
<p>
            <b>rotate3d option</b> establishes the rotate mode for all axes within the current figure. For instance, rotate3d on activates rotate mode, while rotate3d off deactivates it.</p>
<p></p>
<p>When rotate mode is enabled, you can adjust the view of axes using the cursor or the keyboard:</p>
<p></p>
<p>Cursor: Click and drag within the axes.</p>
<p>Keyboard: Use the right arrow (→) or left arrow (←) keys to adjust azimuth, and the up arrow (↑) or down arrow (↓) keys to modify elevation.</p>

## Example

```matlab
surf(peaks)
rotate3d
```

## See also

[zoom](../graphics/zoom.md), [pan](../graphics/pan.md), [view](../graphics/view.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.2.0   | initial version |

## Author

Allan CORNET
