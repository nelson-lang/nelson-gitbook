# scatter

Scatter plot.

## Syntax

- scatter(x, y)
- scatter(x, y, sz)
- scatter(x, y, sz, c)
- scatter(..., 'filled')
- scatter(..., marker)
- scatter(ax, ...)
- scatter(..., propertyName, propertyValue)
- s = scatter(...)

## Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- sz - Marker size: numeric scalar, vector, [] (default: 36)
- c - Marker color: short color name, color name, RGB triplet or vector of colormap indices
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## Output argument

- s - a graphics object: line type or group of line.

## Description

  <p><b>scatter(x, y)</b> generates a scatter plot by placing circular markers at the coordinates defined by the vectors <b>x</b> and <b>y</b>.</p>
  <p>If you intend to display a single dataset, ensure that both <b>x</b> and <b>y</b> are vectors of the same length.</p>
  <p>To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either <b>x</b> or <b>y</b>, while keeping the other as a vector.</p>
  <p>This allows you to overlay or compare multiple datasets within the same plot.</p>
  <p/>
  <p>marker specifies the symbol to be drawn at each data point:</p>
  <p><b>'o'</b>: Circle symbol</p>
  <p><b>'x'</b>: Times symbol</p>
  <p><b>'+'</b>: Plus symbol</p>
  <p><b>'*'</b>: Asterisk symbol</p>
  <p><b>'.'</b>: Dot symbol</p>
  <p><b>'s'</b>: Square symbol</p>
  <p><b>'d'</b>: Diamond symbol</p>
  <p><b>'v'</b>: Downward-pointing triangle symbol</p>
  <p><b>'^'</b>: Upward-pointing triangle symbol</p>
  <p><b>'&gt;'</b>: Left-pointing triangle symbol</p>
  <p><b>'&lt;'</b>: Right-pointing triangle symbol</p>
  <p/>
  <p>The ColorSpec specifies the marker color to use for each data series:</p>
  <p><b>'k'</b>, <b>'black'</b>: Color Black</p>
  <p><b>'y'</b>, <b>'yellow'</b>: Color Yellow</p>
  <p><b>'m'</b>, <b>'magenta'</b>: Color Magenta</p>
  <p><b>'c'</b>, <b>'cyan'</b>: Color Cyan</p>
  <p><b>'r'</b>, <b>'red'</b>: Color Red</p>
  <p><b>'b'</b>, <b>'blue'</b>: Color Blue</p>
  <p><b>'g'</b>, <b>'green'</b>: Color Green</p>
  <p/>
  <p>see <b>line</b> for more information about properties</p>

## Examples

```matlab
f = figure();
theta = linspace(0,1,600);
x = exp(theta).*sin(110*theta);
y = exp(theta).*cos(110*theta);
s = scatter(x,y ,'filled');
```

<img src="scatter_1_CAF48F8D.svg" align="middle"/>

```matlab
f = figure();
x = linspace(0,3*pi,255);
y = cos(x) + rand(1,255);
sz = 1:255;
c = 1:length(x);
scatter(x, y, sz, c, 'd', 'filled')
```

<img src="scatter_2_220DC9DC.svg" align="middle"/>

```matlab
f = figure();
x = linspace(0, 3*pi, 255);
y = cos(x) + rand(1, 255);
c = linspace(1,10,length(x));
scatter(x, y, [], c, 'filled')
```

<img src="scatter_3_D671E61.svg" align="middle"/>

```matlab
f = figure();
theta = linspace(0,2*pi,244);
x = sin(theta) + 0.75*rand(1,244);
y = cos(theta) + 0.75*rand(1,244);
sz = 45;
scatter(x,y,sz,'MarkerEdgeColor',[0 .6 .5], 'MarkerFaceColor',[0 .6 .7],  'LineWidth',3.5)
```

<img src="scatter_4_7C886888.svg" align="middle"/>

```matlab
f = figure(),
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
% Top plot
ax1 = subplot(2,1, 1);
scatter(ax1,x,y)
% Bottom plot
ax2 = subplot(2,1, 2);
scatter(ax2,x,y,'filled','d')
```

<img src="scatter_5_E289BA04.svg" align="middle"/>

```matlab
f = figure();
x = rand(500,5);
y = randn(500,5) + (5:5:25);
s = scatter(x,y, 'filled');
```

<img src="scatter_6_1E831925.svg" align="middle"/>

## See also

[line](line.md), [plot](plot.md).

## History

| Version | Description                              |
| ------- | ---------------------------------------- |
| 1.0.0   | initial version                          |
| 1.12.0  | color name and short color name managed. |

## Author

Allan CORNET
