# patch

Create patches of colored polygons

## 📝 Syntax

- patch(X, Y, C)
- patch(X, Y, Z, C)
- patch('XData', X, 'YData', Y)
- patch('XData', X, 'YData', Y, 'ZData', Z)
- patch('Faces', F, 'Vertices', V)
- patch(S)
- patch(..., propertyName, propertyValue)
- patch(ax, ...)
- go = patch(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: vector or matrix.
- C - Color array: scalar, vector, m-by-n-by-3 array of RGB triplets.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- S - a structure with fields that correspond patch property names and field values.

## 📤 Output argument

- go - a graphics object: patch type.

## 📄 Description

<b>patch(X, Y, C)</b> creates a 2D polygonal shape with vertices defined by <b>X</b> and <b>Y</b> coordinates, and fills the shape with color <b>C</b>.

<b>patch(X, Y, Z, C)</b> creates a 3D polygonal shape with vertices defined by <b>X</b>, <b>Y</b>, and <b>Z</b> coordinates, and fills the shape with color <b>C</b>.

<b>patch(..., PropertyName, PropertyValue, ...)</b> sets optional properties for the patch object using name-value pairs.

<b>patch('Faces', F, 'Vertices', V)</b> creates one or more polygons .

<b>go = patch(...)</b> returns the handle <b>go</b> to the created patch object.

Property Name-Value Pairs:

<b>'FaceColor'</b>: color of the filled shape. FaceColor can be a character vector or a 3-element RGB vector. Default: <b>'flat'</b>.

<b>'EdgeColor'</b>: color of the edges of the polygonal shape. EdgeColor can be a character vector or a 3-element RGB vector. Default: <b>'none'</b>.

<b>'LineWidth'</b>: width of the edges of the polygonal shape. Default: <b>0.5</b>.

<b>'LineStyle'</b>: style of the edges of the polygonal shape. LineStyle can be a character vector or a line style code. Default: <b>'-'</b>.

<b>'FaceAlpha'</b>: transparency of the filled shape. FaceAlpha can be a scalar between 0 and 1. Default: <b>1</b>.

<b>'EdgeAlpha'</b>: transparency of the edges of the polygonal shape. EdgeAlpha can be a scalar between 0 and 1. Default: <b>1</b>.

<b>'Parent'</b>: handle of the parent object for the patch. Default: <b>gca()</b>.

<b>'Vertices'</b>: matrix of vertex coordinates. The matrix must have size N-by-2 or N-by-3, where N is the number of vertices. Default: the vertex coordinates are specified by the <b>X</b>, <b>Y</b>, and <b>Z</b> input arguments.

<b>CreateFcn</b> Callback (function handle, string or cell) called when object is created. Set this property on an existing component has no effect.

<b>DeleteFcn</b> Callback (function handle, string or cell) called when object is deleted.

<b>BeingDeleted</b> Flag indicating that the object is being deleted.

## 💡 Examples

```matlab
fig = figure('Color', 'k');
ax.Color = 'k';
f=0.1;
t=0:f^2:2*pi;
r=pi/4;
p=r*t+r;
patch([cos(p), 0], [sin(p), 0], 'y');
c = eye(3);
for a=2:2:6
  patch([t/4+a, a+r*(1+cos(t/2)),a], [-f*cos(3*(a+t))-r,r*sin(t/2),-1], c(a/2,:));
  patch(a +f*cos(t)'+r./[1,0.65], f*(2+sin(t)').*[1,1], 'k', 'EdgeColor', 'w', 'LineWidth', pi)
end
axis equal
axis off
```

<img src="patch_1.svg" align="middle"/>

```matlab
f =figure('Color', 'w');
x = [-1 1 0 -1];
y = [-1/sqrt(3) -1/sqrt(3) 2*sqrt(3)/3 -1/sqrt(3)];
plot(x,y,'k','LineWidth',3);
t = 0:0.001:2*pi;
xc = cos(t)/3+x';
yc = sin(t)/3-y';
for i = 1:3
    patch(xc(i,:),yc(i,:),'k');
end
patch(x,-y,'w','EdgeColor','w');
axis('equal')
axis('off')
```

<img src="patch_2.svg" align="middle"/>
Nerfertiti 3D mask

```matlab
nefertiti_directory = [modulepath('graphics', 'root'), '/examples/nefertiti-mask/'];
load([nefertiti_directory, 'nefertiti-mask.nh5']);
figure('Color', [1, 1, 1]);
patch('Faces', Faces, 'Vertices', Vertices, 'FaceVertexCData', Colors, ...
      'EdgeColor', 'none', ...
      'FaceColor', 'interp', 'FaceAlpha', 1);
axis equal
axis off
view([0, 0, 1]);
```

<img src="patch_3.svg" align="middle"/>
Alpha channel

```matlab
x = [1 3 4 3 1 0];
y = [0 0 2 4 4 2];
z = [0 0 0 0 0 0];
figure();
hold on
patch(x,y,z,'cyan','FaceAlpha',0.3)
patch(x+2,y,z,'magenta','FaceAlpha',0.3)
patch(x+1,y+2,z,'yellow','FaceAlpha',0.3)
```

<img src="patch_4.svg" align="middle"/>

## 🔗 See also

[surf](../graphics/surf.md), [colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | initial version                      |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## 👤 Author

Allan CORNET
