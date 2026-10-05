#import "../../nelson_help.typ": *

= daspect <graphics:3_labels_styling.1_axes_appearance.daspect>

Contrôler la longueur des unités de données le long de chaque axe.

== Syntaxe

- #raw("daspect(ratio)");
- #raw("d = daspect()");
- #raw("daspect('auto')");
- #raw("daspect('manual')");
- #raw("m = daspect('mode')");
- #raw("daspect(ax, ...)");

== Argument d'entrée

/ ratio: Vecteur à trois éléments de valeurs positives spécifiant les longueurs relatives des unités de données le long des axes x, y et z.
/ 'auto': Définir le mode du rapport d'aspect des données sur automatique.
/ 'manual': Définir le mode du rapport d'aspect des données sur manuel.
/ 'mode': Interroger le mode actuel du rapport d'aspect des données ('auto' ou 'manual').
/ ax: Objet des axes cibles. Si non spécifié, utilise les axes actuels.

== Argument de sortie

/ d: Vecteur a trois elements representant le rapport d'aspect courant des donnees.
/ m: Mode actuel du rapport d'aspect des données : 'auto' ou 'manual'.

== Description

#strong[daspect]; contrôle les longueurs relatives des unités de données le long des axes x, y et z.

 #strong[daspect(ratio)]; définit le rapport d'aspect des données pour les axes actuels. #strong[ratio]; est un vecteur à trois éléments de valeurs positives. Par exemple, \[1 2 3\] signifie que la longueur de 0 à 1 le long de l'axe x est égale à la longueur de 0 à 2 le long de l'axe y et de 0 à 3 le long de l'axe z.

 #strong[d \= daspect()]; renvoie le rapport d'aspect des données actuel sous forme de vecteur à trois éléments.

 #strong[daspect('auto')]; définit le mode du rapport d'aspect des données sur automatique, permettant aux axes de choisir le rapport.

 #strong[daspect('manual')]; définit le mode sur manuel et utilise le rapport stocké dans les axes.

 #strong[m \= daspect('mode')]; renvoie le mode actuel, soit 'auto' soit 'manual'.

 #strong[daspect(ax, ...)]; agit sur les axes spécifiés par #strong[ax]; au lieu des axes actuels.

 Définir le rapport d'aspect des données désactive le comportement d'étirement pour remplir les axes.


== Exemples

Étirez X par rapport à Y

``````matlab

plot(-5:5, (-5:5).^2)
daspect([2 1 1])
``````


#align(center)[#image("daspect_1.svg")]
Définir des longueurs d'unités de données différentes pour chaque axe

``````matlab

sphere(40);
daspect([2 1 0.5])

``````


#align(center)[#image("daspect_2.svg")]
Basculer entre les modes de rapport d'aspect manuel et automatique

``````matlab

[X, Y, Z] = sphere(30);
surf(X, Y, Z)
daspect([2 1 1])
disp(daspect('mode'))
daspect('auto')
disp(daspect('mode'))

``````


#align(center)[#image("daspect_3.svg")]
Interroger le rapport d'aspect des données actuel

``````matlab

[x, y] = meshgrid(-2:0.2:2);
z = x .* exp(-x.^2 - y.^2);
surf(x, y, z)
d = daspect()
disp(d)

``````


#align(center)[#image("daspect_4.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.pbaspect>)[pbaspect];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim];, #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
