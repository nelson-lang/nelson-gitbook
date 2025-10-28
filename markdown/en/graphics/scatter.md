# scatter

Scatter plot.

## 📝 Syntax

- scatter(x, y)
- scatter(x, y, sz)
- scatter(x, y, sz, c)
- scatter(..., 'filled')
- scatter(..., marker)
- scatter(ax, ...)
- scatter(..., propertyName, propertyValue)
- s = scatter(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- sz - Marker size: numeric scalar, vector, [] (default: 36)
- c - Marker color: short color name, color name, RGB triplet or vector of colormap indices
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- s - a graphics object: scatter type or array of scatter.

## 📄 Description

<b>scatter(x, y)</b> generates a scatter plot by placing circular markers at the coordinates defined by the vectors <b>x</b> and <b>y</b>.

If you intend to display a single dataset, ensure that both <b>x</b> and <b>y</b>are vectors of the same length.

To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either <b>x</b> or <b>y</b>, while keeping the other as a vector.

This allows you to overlay or compare multiple datasets within the same plot.

Scatter Properties:
| Property | Description |
| --- | --- |
| **AlphaData** | Marker face transparency, 1 (default) or array the same size as **XData** |
| **BeingDeleted** | Flag indicating that the object is being deleted. |
| **BusyAction** | Callback queuing specified as 'queue' (default) or 'cancel'. The property determines how Nelson handles the execution of interrupting callbacks. |
| **CData** | Marker colors: [] (default), RGB triplet, matrix of RGB triplets or vector. Marker color to use for each data series: 'k'/'black' (Black), 'y'/'yellow' (Yellow), 'm'/'magenta' (Magenta), 'c'/'cyan' (Cyan), 'r'/'red' (Red), 'b'/'blue' (Blue), 'g'/'green' (Green) |
| **CDataMode** | Selection mode for CData: 'manual', 'auto' (default). |
| **Children** | Children. |
| **CreateFcn** | Component creation function. |
| **DeleteFcn** | Component deletion function. |
| **DisplayName** | Legend label: character vector or string scalar, '' (default). |
| **Interruptible** | Callback interruption 'on' (default). |
| **LineWidth** | Line width: scalar positive value. |
| **Marker** | Marker symbol: 'o' (Circle), 'x' (Times), '+' (Plus), '\*' (Asterisk), '.' (Dot), 's' (Square), 'd' (Diamond), 'v' (Downward-pointing triangle), '^' (Upward-pointing triangle), '>' (Left-pointing triangle), '<' (Right-pointing triangle) |
| **MarkerEdgeColor** | Marker outline color: RGB triplet. |
| **MarkerEdgeAlpha** | Marker edge transparency: scalar in range [0,1], 'flat or 1 (default). To assign distinct transparency values to the edges of each point in a plot, set the AlphaData property to a vector matching the size of the **XData** property and set the **MarkerEdgeAlpha** property to **'flat'**. |
| **MarkerFaceColor** | Marker fill color: RGB triplet. |
| **MarkerFaceAlpha** | Marker face transparency: scalar in range [0,1], 'flat or 1 (default). To assign distinct transparency values to the faces of each point in a plot, set the AlphaData property to a vector matching the size of the **XData** property and set the **MarkerFaceAlpha** property to **'flat'**. |
| **Parent** | Parent container: Figure graphics object. |
| **SizeData** | Marker sizes:[] (default), scalar or vector. |
| **Tag** | Object identifier: character vector, string scalar or '' (default). |
| **Type** | Type of graphics object 'scatter'. |
| **UserData** | User data: array or [] |
| **Visible** | State of visibility: 'on' (default) or 'off'. |
| **XData** | x values: vector or matrix or [] (default). |
| **YData** | y values: vector or matrix or [] (default). |
| **ZData** | z values: vector or matrix or [] (default). |
| **XDataMode** | Selection mode for XData: 'manual' or 'auto'. |

## 💡 Examples

```matlab

f = figure();
theta = linspace(0,1,600);
x = exp(theta).*sin(110*theta);
y = exp(theta).*cos(110*theta);
s = scatter(x,y ,'filled');
```

<img src="scatter_1.svg" align="middle"/>

```matlab

f = figure();
x = linspace(0,3*pi,255);
y = cos(x) + rand(1,255);
sz = 1:255;
c = 1:length(x);
scatter(x, y, sz, c, 'd', 'filled')

```

<img src="scatter_2.svg" align="middle"/>

```matlab

f = figure();
x = linspace(0, 3*pi, 255);
y = cos(x) + rand(1, 255);
c = linspace(1,10,length(x));
scatter(x, y, [], c, 'filled')

```

<img src="scatter_3.svg" align="middle"/>

```matlab

f = figure();
theta = linspace(0,2*pi,244);
x = sin(theta) + 0.75*rand(1,244);
y = cos(theta) + 0.75*rand(1,244);
sz = 45;
scatter(x,y,sz,'MarkerEdgeColor',[0 .6 .5], 'MarkerFaceColor',[0 .6 .7],  'LineWidth',3.5)

```

<img src="scatter_4.svg" align="middle"/>

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

<img src="scatter_5.svg" align="middle"/>

```matlab

f = figure();
x = rand(500,5);
y = randn(500,5) + (5:5:25);
s = scatter(x,y, 'filled');

```

<img src="scatter_6.svg" align="middle"/>

```matlab

f = figure();
% Create figure
hold on;
% Settings
nPoints = 10; % Number of points per marker type
markers = {'o', '+', '*', 's', 'd', '^', 'v', '>', '<', 'p', 'h'};
sizesMin = 20; % Minimum size
sizesMax = 100; % Maximum size
% X positions
x = linspace(1, 10, nPoints);
% Fixed color
fixedColor = [0 0 0]; % black
% Plot each marker type
for m = 1:numel(markers)
    y = m * ones(size(x)); % Constant Y for each marker type
    sizes = linspace(sizesMin, sizesMax, nPoints); % Increasing sizes
    % Scatter points
    scatter(x, y, sizes, ...
        'Marker', markers{m}, ...
        'MarkerEdgeColor', fixedColor, ...
        'MarkerFaceColor', 'none', ...
        'LineWidth', 1.5);
end
title('Scatter Only - One Line per Marker Type with Increasing Size');
xlabel('X Axis');
ylabel('Marker Type Line');
ylim([0 numel(markers)+1]);
hold off;

```

<img src="scatter_7.svg" align="middle"/>

## 🔗 See also

[line](../graphics/line.md), [plot](../graphics/plot.md), [scatter3](../graphics/scatter3.md).

## 🕔 History

| Version | 📄 Description                                |
| ------- | --------------------------------------------- |
| 1.0.0   | initial version                               |
| 1.12.0  | color name and short color name managed.      |
| 1.14.0  | Scatter is a graphics object with Properties. |

## 👤 Author

Allan CORNET
