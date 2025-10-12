# pan

Enable pan mode.

## Syntax

- pan
- pan option
- pan(fig, ...)
- pan(ax, ...)

## Input argument

- option - string: 'on', 'off', 'out', 'xon', 'yon' or 'toggle'.
- fig - Figure object: Target figure
- ax - a scalar graphics object value: parent container, specified as a axes.

## Description

<p>Utilize the pan mode to dynamically adjust axis limits for interactive data exploration.</p>

<p>Enable or disable the pan mode and configure additional basic settings using the pan function.</p>

<p>Pan mode is compatible with various charts like line, bar, histogram, and surface charts. These charts typically feature pan icon on the toolbar to facilitate pan functionality.</p>

<p>
            pan option configures the pan mode for all axes within the current figure.</p>

<p>Once pan mode is active, you can adjust the view of axes using the cursor, or keyboard:</p>

<p>Cursor:  Click and drag the cursor in the axes.</p>

<p>Keyboard: To pan horizontally, press the left arrow (←) or the right arrow (→) key. To pan vertically, press the up arrow (↑) or the down arrow (↓) key.</p>

<p></p>

<p>The pan mode option can be specified using one of the following values:</p>

<p>
                'toggle': Toggles the pan mode. If pan mode is disabled, 'toggle' reverts to the most recently used pan option of 'on', 'xon', or 'yon'. This option behaves the same as calling pan without any arguments.</p>

<p>
                    'xon': Enables pan mode for the x-dimension exclusively.</p>

<p>
                        'yon': Activates pan mode for the y-dimension exclusively.</p>

<p>
                            'on': Activates pan mode.</p>

<p>
                                'off': Deactivates pan mode. Note that certain default interactions may persist regardless of the interaction mode.</p>

## Example

```matlab
surf(peaks)
pan on

```

## See also

[rotate3d](../graphics/rotate3d.md), [zoom](../graphics/zoom.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.2.0   | initial version |

## Author

Allan CORNET
