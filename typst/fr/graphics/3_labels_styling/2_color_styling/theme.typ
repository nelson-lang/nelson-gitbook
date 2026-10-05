#import "../../nelson_help.typ": *

= theme <graphics:3_labels_styling.2_color_styling.theme>

Definit le theme de couleur d'une figure.

== Syntaxe

- #raw("theme(themename)");
- #raw("theme(f, themename)");
- #raw("theme(f, t)");
- #raw("t = theme(...)");

== Argument d'entrée

/ themename: une chaine : 'light' ou 'dark'.
/ f: un objet graphique. Figure cible. Si un objet non figure est fourni, sa figure ancetre est utilisee. Si omis, la figure courante est utilisee.
/ t: un objet theme, tel que renvoye par la propriete #strong[Theme]; d'une figure.

== Argument de sortie

/ t: l'objet theme applique a la figure.

== Description

#strong[theme]; definit le theme de couleur d'une figure a #strong['light']; ou #strong['dark'];.

 L'application d'un theme met a jour la propriete #strong[Theme]; de la figure ainsi que les couleurs de la figure et de ses enfants qui utilisent des couleurs gerees par le theme.

 Sans argument figure, le theme est applique a la figure courante renvoyee par #strong[gcf];.


== Exemples

Appliquer un theme sombre a une figure.

``````matlab
f = figure();
surf(peaks);
theme(f, 'dark');

``````

Interroger le theme applique a la figure courante.

``````matlab
f = figure();
t = theme('light')

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
