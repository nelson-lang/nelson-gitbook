#import "../../nelson_help.typ": *

= coneplot <graphics:1_plots.5_vector_fields.coneplot>

Afficher des directions vectorielles 3-D avec des fleches de style cone.

== Syntaxe

- #raw("coneplot(X, Y, Z, U, V, W)");
- #raw("coneplot(X, Y, Z, U, V, W, cx, cy, cz)");
- #raw("coneplot(parent, ...)");
- #raw("h = coneplot(...)");

== Description

#strong[coneplot]; affiche des directions vectorielles 3-D echantillonnees au moyen d'un objet patch.


== Exemple

Afficher des vecteurs sur une grille 3-D.

``````matlab
% Grille 3D
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);

% Champ vectoriel synthétique (rotation + divergence)
u = -y;
v = x;
w = z * 0.2;

% Positions des cônes
[cx, cy, cz] = meshgrid(-1.5:1:1.5, -1.5:1:1.5, -1.5:1:1.5);

figure
hcone = coneplot(x, y, z, u, v, w, cx, cy, cz, 0.4);
hcone.FaceColor = 'blue';
hcone.EdgeColor = 'none';

camlight right
lighting gouraud
view(30, 40)
daspect([1 1 1])
axis tight
grid on
``````


#align(center)[#image("coneplot_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.5_vector_fields.quiver3>)[quiver3];.
