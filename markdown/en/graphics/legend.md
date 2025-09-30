# legend

Add legend to axes.

## Syntax

- legend()
- legend(label1, ..., labelN)
- legend(labels)
- legend('off')
- legend('hide')
- legend('show')
- legend('toggle')
- legend('boxon')
- legend('boxoff')
- legend(ax, ...)
- legend(..., 'Location', lcn)
- legend(..., propertyName, propertyValue)
- L = legend(...)

## Input argument

- label1, ..., labelN - sets the legend labels: row vector characters.
- labels - cell array of character vectors or string array.
- 'off' - delete the legend.
- 'toggle' - toggle legend visibility.
- 'hide' - hide legend.
- 'show' - show legend.
- 'boxon' - display box around legend.
- 'boxoff' - hide box around legend.
- ax - axes to make current.
- lcn - Legend location: a string ('NE' default).
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- L - a graphics object: axes type.

## Description

<p>
            <b>legend</b> creates a legend in the current figure.</p>
<p>
                <b>Location for legend on the plot:</b>
            </p>
<p></p>
<p>'northeast' or 'NE': Top right (default).</p>
<p>'north' or 'N': Top center.</p>
<p>'south' or 'S': Bottom center.</p>
<p>'east' or 'E': Middle right.</p>
<p>'west' or 'W': Middle left.</p>
<p>'northwest' or 'NW': Top left.</p>
<p>'southeast' or 'SE': Bottom right.</p>
<p>'southwest' or 'SW': Bottom left.</p>

## Example

```matlab
f = figure();
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
ax = gca();
plot(ax, x, y1);
plot(ax, x, y2);
legend('sin(x)', 'cos(x)', 'Location', 'N')
```

<img src="legend.svg" align="middle"/>

## See also

[title](../graphics/title.md), [text](../graphics/text.md), [plot](../graphics/plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
