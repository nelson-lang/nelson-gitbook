#import "../../nelson_help.typ": *

= patch <graphics:1_plots.7_surfaces_volumes_polygons.patch>

Create patches of colored polygons

== Syntax

- #raw("patch(X, Y, C)");
- #raw("patch(X, Y, Z, C)");
- #raw("patch('XData', X, 'YData', Y)");
- #raw("patch('XData', X, 'YData', Y, 'ZData', Z)");
- #raw("patch('Faces', F, 'Vertices', V)");
- #raw("patch(S)");
- #raw("patch(..., propertyName, propertyValue)");
- #raw("patch(ax, ...)");
- #raw("go = patch(...)");

== Input argument

/ X: x-coordinates: vector or matrix.
/ Y: y-coordinates: vector or matrix.
/ Z: z-coordinates: vector or matrix.
/ C: Color array: scalar, vector, m-by-n-by-3 array of RGB triplets.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.
/ S: a structure with fields that correspond patch property names and field values.

== Output argument

/ go: a graphics object: patch type.

== Description

#strong[patch(X, Y, C)]; creates a 2D polygonal shape with vertices defined by#strong[X]; and #strong[Y]; coordinates, and fills the shape with color#strong[C];.

 #strong[patch(X, Y, Z, C)]; creates a 3D polygonal shape with vertices defined by#strong[X];, #strong[Y];, and#strong[Z]; coordinates, and fills the shape with color #strong[C];.

 #strong[patch(..., PropertyName, PropertyValue, ...)]; sets optional properties for the patch object using name-value pairs.

 #strong[patch('Faces', F, 'Vertices', V)]; creates one or more polygons .

 #strong[go \= patch(...)]; returns the handle #strong[go]; to the created patch object.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[patch properties]; for the complete property list.


== Examples

``````matlab
fig = figure('Color', 'k');
ax = gca();
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
``````


#align(center)[#image("patch_1.svg")]
``````matlab
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
``````


#align(center)[#image("patch_2.svg")]
Nerfertiti 3D mask

``````matlab
nefertiti_directory = [modulepath('graphics', 'root'), '/examples/nefertiti-mask/'];
load([nefertiti_directory, 'nefertiti-mask.nh5']);
figure('Color', [1, 1, 1]);
patch('Faces', Faces, 'Vertices', Vertices, 'FaceVertexCData', Colors, ...
      'EdgeColor', 'white', ...
      'FaceColor', 'interp', 'FaceAlpha', 1);
axis equal
axis off
view([0, 0, 1]);
``````


#align(center)[#image("patch_3.svg")]
Alpha channel

``````matlab
x = [1 3 4 3 1 0];
y = [0 0 2 4 4 2];
z = [0 0 0 0 0 0];
figure();
hold on
patch(x,y,z,'cyan','FaceAlpha',0.3)
patch(x+2,y,z,'magenta','FaceAlpha',0.3)
patch(x+1,y+2,z,'yellow','FaceAlpha',0.3)
``````


#align(center)[#image("patch_4.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[patch properties];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill3>)[fill3];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.7.0], [CreateFcn, DeleteFcn callback added.],
  [--], [BeingDeleted property added.],
)

// Author: Allan CORNET
