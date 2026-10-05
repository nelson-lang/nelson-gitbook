#import "../../nelson_help.typ": *

= pbaspect <graphics:3_labels_styling.1_axes_appearance.pbaspect>

Contrôler les longueurs relatives de chaque axe dans la boîte de tracé.

== Syntaxe

- #raw("pbaspect(ratio)");
- #raw("pb = pbaspect()");
- #raw("pbaspect('auto')");
- #raw("pbaspect('manual')");
- #raw("m = pbaspect('mode')");
- #raw("pbaspect(ax, ...)");

== Argument d'entrée

/ ratio: Vecteur à trois éléments de valeurs positives spécifiant les longueurs relatives des axes x, y et z dans la boîte de tracé.


/ 'auto': Définir le mode du rapport d'aspect de la boîte de tracé sur automatique.


/ 'manual': Définir le mode du rapport d'aspect de la boîte de tracé sur manuel.


/ 'mode': Interroger le mode actuel du rapport d'aspect de la boîte de tracé ('auto' ou 'manual').


/ ax: Objet des axes cibles. Si non spécifié, utilise les axes actuels.



== Argument de sortie

/ pb: Vecteur à trois éléments représentant le rapport d'aspect actuel de la boîte de tracé.


/ m: Mode actuel du rapport d'aspect de la boîte de tracé : 'auto' ou 'manual'.



== Description

#strong[pbaspect]; contrôle les longueurs relatives des axes x, y et z dans la boîte de tracé.

 #strong[pbaspect(ratio)]; définit le rapport d'aspect de la boîte de tracé pour les axes actuels. #strong[ratio]; est un vecteur à trois éléments de valeurs positives. Par exemple, \[3 1 1\] signifie que l'axe x est trois fois plus long que les axes y et z.

 #strong[pb \= pbaspect()]; renvoie le rapport d'aspect actuel de la boîte de tracé sous forme de vecteur à trois éléments.

 #strong[pbaspect('auto')]; définit le mode du rapport d'aspect de la boîte de tracé sur automatique, permettant aux axes de choisir le rapport.

 #strong[pbaspect('manual')]; définit le mode sur manuel et utilise le rapport stocké dans les axes.

 #strong[m \= pbaspect('mode')]; renvoie le mode actuel, soit 'auto' soit 'manual'.

 #strong[pbaspect(ax, ...)]; agit sur les axes spécifiés par #strong[ax]; au lieu des axes actuels.

 Définir le rapport d'aspect de la boîte de tracé désactive le comportement d'étirement pour remplir les axes.


== Exemples

Utiliser des longueurs d'axes égales

``````matlab

x = linspace(0,10,100);
y = sin(x);
plot(x, y)
pbaspect([1 1 1])

``````


#align(center)[#image("pbaspect_1.svg")]
Utiliser des longueurs d'axes différentes

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
pbaspect([2 1 1])
disp(pbaspect('mode'))

``````


#align(center)[#image("pbaspect_2.svg")]
Revenir au rapport d'aspect par défaut de la boîte de tracé

``````matlab

X = rand(100,1);
Y = rand(100,1);
Z = rand(100,1);
scatter3(X, Y, Z)
pbaspect([3 2 1])
pbaspect('auto')

``````


#align(center)[#image("pbaspect_3.svg")]
Interroger le rapport d'aspect de la boîte de tracé

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
pb = pbaspect()
disp(pb)

``````


#align(center)[#image("pbaspect_4.svg")]
Définir le rapport d'aspect de la boîte de tracé pour un objet axes spécifique

``````matlab

f = figure();
ax1 = subplot(2, 1, 1);
plot(ax1, 1:10)
ax2 = subplot(2, 1, 2);
plot(ax2, 1:10)
pbaspect(ax2, [2 2 1])

``````


#align(center)[#image("pbaspect_5.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.daspect>)[daspect];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
