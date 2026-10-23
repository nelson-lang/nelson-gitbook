#import "../../nelson_help.typ": *

= axtoolbar <graphics:3_labels_styling.3_interactions_camera_lighting.axtoolbar>

Obtient ou configure la barre d'outils des axes.

== Syntaxe

- #raw("tb = axtoolbar()");
- #raw("tb = axtoolbar(buttons)");
- #raw("tb = axtoolbar(ax)");
- #raw("tb = axtoolbar(ax, buttons)");
- #raw("tb = axtoolbar(..., name, value, ...)");
- #raw("[tb, btns] = axtoolbar(...)");

== Argument d'entrée

/ ax: Un objet graphique scalaire : des axes. Par défaut : les axes courants.
/ buttons: Un vecteur de caractères, un tableau de chaînes ou un tableau de cellules de caractères : 'default', 'export', 'brush', 'datacursor', 'rotate', 'pan', 'zoom', 'restoreview', 'zoomin' ou 'zoomout'. Les noms sont seulement validés : la barre d'outils de la figure de Nelson est partagée par tous les axes.
/ name, value: Propriétés de la barre d'outils des axes, par exemple 'Visible', 'Tag', 'UserData'.

== Argument de sortie

/ tb: Un objet graphique scalaire : la barre d'outils des axes.
/ btns: Un tableau d'objets graphiques vide : Nelson n'a pas de boutons par axes.

== Description

#strong[axtoolbar]; renvoie l'objet #strong[Toolbar]; d'un axes et lui applique les propriétés indiquées.

 Utilisez #strong[axtoolbar('Visible', 'off')]; pour masquer la barre d'outils des axes courants.

 Si la propriété #strong[Toolbar]; de la cible a été mise à vide, appelez #strong[reset]; sur la cible pour la restaurer avant #strong[axtoolbar];.


== Exemple

``````matlab
f = figure();
surf(peaks(40), 'EdgeColor', 'none');
tb = axtoolbar('Visible', 'off')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[propriétés des axes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
