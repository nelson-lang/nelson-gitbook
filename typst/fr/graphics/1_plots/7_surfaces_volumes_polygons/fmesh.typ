#import "../../nelson_help.typ": *

= fmesh <graphics:1_plots.7_surfaces_volumes_polygons.fmesh>

Tracer un maillage depuis une fonction de deux variables.

== Syntaxe

- #raw("fmesh(fun)");
- #raw("fmesh(fun, xyinterval)");
- #raw("fmesh(fun, [xmin xmax ymin ymax])");
- #raw("fmesh(funx, funy, funz)");
- #raw("fmesh(..., Nom, Valeur)");
- #raw("fmesh(parent, ...)");
- #raw("h = fmesh(...)");

== Description

#strong[fmesh]; cree un objet graphique #strong[functionsurface]; et affiche un maillage pour une fonction de deux variables.

 La fonction peut etre indiquee sous la forme #strong[fun(x,y)];. Une surface parametrique peut etre indiquee avec #strong[funx(u,v)];, #strong[funy(u,v)]; et #strong[funz(u,v)];.

 L'intervalle par defaut est #strong[\[-5 5 -5 5\]];. Un intervalle a deux elements s'applique aux plages x et y.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[proprietes de functionsurface]; pour la liste complete des proprietes.


== Exemples

Afficher un maillage de fonction.

``````matlab
fmesh(@(x, y) sin(x) + cos(y), [-pi pi -pi pi]);
``````


#align(center)[#image("fmesh_1.svg")]
Utiliser un maillage plus dense et definir une propriete de ligne.

``````matlab
fmesh(@(x, y) x.^2 - y.^2, [-2 2 -2 2], 'MeshDensity', 51, 'LineWidth', 1.5);
``````


#align(center)[#image("fmesh_2.svg")]
Afficher un maillage parametrique.

``````matlab
fmesh(@(u, v) u, @(u, v) v, @(u, v) sin(u) + cos(v), [-pi pi -pi pi]);
``````


#align(center)[#image("fmesh_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[proprietes de functionsurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];.
