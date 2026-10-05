#import "../../nelson_help.typ": *

= trisurf <graphics:1_plots.7_surfaces_volumes_polygons.trisurf>

Trace de surface triangulaire

== Syntaxe

- #raw("trisurf(T, x, y, z)");
- #raw("trisurf(TO)");
- #raw("trisurf(..., c)");
- #raw("trisurf(..., Name, Value)");
- #raw("h = trisurf(...)");

== Description

#strong[trisurf]; trace une surface triangulaire 3-D depuis une matrice de connectivite ou un objet de triangulation.


== Exemples

Tracer les facettes de l'enveloppe convexe de points 3-D aleatoires.

``````matlab
P = randn(30, 3);
T = convhulln(P);
trisurf(T, P(:, 1), P(:, 2), P(:, 3), 'FaceAlpha', 0.4)
``````


#align(center)[#image("trisurf_1.svg")]
``````matlab

N = 5e3;
g = randn(3,N);
p = g./vecnorm(g);
k = convhull(p');
c = @(x) sparse(k(:,x)*[1,1,1],k,1,N,N);
t = c(1) | c(2) | c(3);
w = spdiags(-sum(t,2)+1, 0, double(t));
Y = rand(N,1);
A = speye(N);
smoothness  = 10;
x   = (A + smoothness *w' * w) \ Y;
p2 = p .* x';
trisurf(k,p2(1,:),p2(2,:),p2(3,:),'FaceC', 'w', 'EdgeC', 'none','AmbientS',0,'DiffuseS',0.6,'SpecularS',1);
light;
axis equal
axis off
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.triplot>)[triplot];, #nlink(<geometry:triangulation>)[triangulation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
