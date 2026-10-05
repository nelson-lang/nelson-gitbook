#import "../../nelson_help.typ": *

= patch <graphics:1_plots.7_surfaces_volumes_polygons.patch>

Créer des patchs de polygones colorés

== Syntaxe

- #raw("patch(X, Y, C)");
- #raw("patch(X, Y, Z, C)");
- #raw("patch('XData', X, 'YData', Y)");
- #raw("patch('XData', X, 'YData', Y, 'ZData', Z)");
- #raw("patch('Faces', F, 'Vertices', V)");
- #raw("patch(S)");
- #raw("patch(..., propertyName, propertyValue)");
- #raw("patch(ax, ...)");
- #raw("go = patch(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : scalaire, vecteur, tableau m-par-n-par-3 de triplets RGB.
/ ax: Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.
/ propertyName: Chaîne de caractères scalaire ou vecteur ligne.
/ propertyValue: Une valeur.
/ S: Structure avec des champs correspondant aux propriétés du patch et leurs valeurs.

== Argument de sortie

/ go: Objet graphique : type patch.

== Description

#strong[patch(X, Y, C)]; crée une forme polygonale 2D avec des sommets définis par les coordonnées #strong[X]; et #strong[Y];, et remplit la forme avec la couleur #strong[C];.

 #strong[patch(X, Y, Z, C)]; crée une forme polygonale 3D avec des sommets définis par les coordonnées #strong[X];, #strong[Y]; et #strong[Z];, et remplit la forme avec la couleur #strong[C];.

 #strong[patch(..., PropertyName, PropertyValue, ...)]; définit des propriétés optionnelles pour l'objet patch à l'aide de paires nom-valeur.

 #strong[patch('Faces', F, 'Vertices', V)]; crée un ou plusieurs polygones.

 #strong[go \= patch(...)]; retourne le handle #strong[go]; de l'objet patch créé.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[proprietes de patch]; pour la liste complete des proprietes.


== Exemples

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
Masque 3D de Nefertiti

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
Canal alpha

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

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[proprietes de patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill3>)[fill3];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
)

// Auteur: Allan CORNET
