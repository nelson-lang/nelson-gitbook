#import "../../nelson_help.typ": *

= scatter <graphics:1_plots.4_data_distribution_plots.scatter>

Scatter plot.

== Syntax

- #raw("scatter(x, y)");
- #raw("scatter(x, y, sz)");
- #raw("scatter(x, y, sz, c)");
- #raw("scatter(..., 'filled')");
- #raw("scatter(..., marker)");
- #raw("scatter(ax, ...)");
- #raw("scatter(..., propertyName, propertyValue)");
- #raw("s = scatter(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ sz: Marker size: numeric scalar, vector, \[\] (default: 36)
/ c: Marker color: short color name, color name, RGB triplet or vector of colormap indices
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character. See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties]; for the property list.
/ propertyValue: a value.

== Output argument

/ s: a graphics object: scatter type or array of scatter.

== Description

#strong[scatter(x, y)]; generates a scatter plot by placing circular markers at the coordinates defined by the vectors #strong[x]; and#strong[y];.

 If you intend to display a single dataset, ensure that both #strong[x]; and#strong[y]; are vectors of the same length.

 To visualize multiple datasets on a shared set of axes, you can achieve this by using a matrix for either #strong[x]; or#strong[y];, while keeping the other as a vector.

 This allows you to overlay or compare multiple datasets within the same plot.

 

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties]; for the complete property list.


== Examples

``````matlab

f = figure();
theta = linspace(0,1,600);
x = exp(theta).*sin(110*theta);
y = exp(theta).*cos(110*theta);
s = scatter(x,y ,'filled');
``````


#align(center)[#image("scatter_1.svg")]
``````matlab

f = figure();
x = linspace(0,3*pi,255);
y = cos(x) + rand(1,255);
sz = 1:255;
c = 1:length(x);
scatter(x, y, sz, c, 'd', 'filled')

``````


#align(center)[#image("scatter_2.svg")]
``````matlab

f = figure();
x = linspace(0, 3*pi, 255);
y = cos(x) + rand(1, 255);
c = linspace(1,10,length(x));
scatter(x, y, [], c, 'filled')

``````


#align(center)[#image("scatter_3.svg")]
``````matlab

f = figure();
theta = linspace(0,2*pi,244);
x = sin(theta) + 0.75*rand(1,244);
y = cos(theta) + 0.75*rand(1,244);
sz = 45;
scatter(x,y,sz,'MarkerEdgeColor',[0 .6 .5], 'MarkerFaceColor',[0 .6 .7],  'LineWidth',3.5)

``````


#align(center)[#image("scatter_4.svg")]
``````matlab

f = figure(),
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
% Top plot
ax1 = subplot(2,1, 1);
scatter(ax1,x,y)
% Bottom plot
ax2 = subplot(2,1, 2);
scatter(ax2,x,y,'filled','d')

``````


#align(center)[#image("scatter_5.svg")]
``````matlab

f = figure();
x = rand(500,5);
y = randn(500,5) + (5:5:25);
s = scatter(x,y, 'filled');

``````


#align(center)[#image("scatter_6.svg")]
``````matlab

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

``````


#align(center)[#image("scatter_7.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.12.0], [color name and short color name managed.],
  [1.14.0], [Scatter is a graphics object with Properties.],
)

// Author: Allan CORNET
