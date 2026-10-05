#import "../../nelson_help.typ": *

= legend <graphics:3_labels_styling.4_labels_annotations.legend>

Ajoute une legende aux axes.

== Syntaxe

- #raw("legend()");
- #raw("legend(label1, ..., labelN)");
- #raw("legend(labels)");
- #raw("legend(plotHandles, labels)");
- #raw("legend('off')");
- #raw("legend('hide')");
- #raw("legend('show')");
- #raw("legend('toggle')");
- #raw("legend('boxon')");
- #raw("legend('boxoff')");
- #raw("legend(ax, ...)");
- #raw("legend(ax, plotHandles, labels)");
- #raw("legend(..., 'Location', lcn)");
- #raw("legend(..., propertyName, propertyValue)");
- #raw("L = legend(...)");
- #raw("[L, icons, plots, text] = legend(...)");

== Argument d'entrée

/ label1, ..., labelN: definit les etiquettes de la legende.
/ labels: cellule de vecteurs de caracteres ou tableau de chaines.
/ plotHandles: objets graphiques a inclure dans la legende.
/ 'off': supprime la legende.
/ 'toggle': active ou desactive la visibilite de la legende.
/ 'hide': masque la legende.
/ 'show': affiche la legende.
/ 'boxon': affiche l'encadre autour de la legende.
/ 'boxoff': masque l'encadre autour de la legende.
/ ax: axes ou axes polaires cible.
/ lcn: emplacement de la legende. La valeur par defaut est 'northeast'.
/ propertyName: chaine scalaire ou vecteur ligne de caracteres.
/ propertyValue: une valeur.

== Argument de sortie

/ L: un objet graphique de type legend.
/ icons: vecteur d'objets graphiques reserve aux icones de legende.
/ plots: objets graphiques representes par la legende.
/ text: vecteur d'objets graphiques reserve aux textes de legende.

== Description

#strong[legend]; cree ou met a jour une legende attachee aux axes cibles.

 Si les etiquettes sont omises, elles sont prises depuis la propriete #strong[DisplayName]; des objets traces. Quand #strong[AutoUpdate]; vaut #strong[on];, les nouveaux objets traces sont ajoutes automatiquement.

 L'objet renvoye a le type #strong[legend]; et prend en charge les proprietes #strong[AutoUpdate];, #strong[Box];, #strong[BackgroundAlpha];, #strong[Color];, #strong[EdgeColor];, #strong[FontName];, #strong[FontSize];, #strong[FontAngle];, #strong[FontWeight];, #strong[Interpreter];, #strong[ItemHitFcn];, #strong[LineWidth];, #strong[Location];, #strong[NumColumns];, #strong[Orientation];, #strong[IconColumnWidth];, #strong[Direction];, #strong[Position];, #strong[String];, #strong[TextColor];, #strong[Units];, #strong[Title];, ainsi que les proprietes communes des objets graphiques.

 #strong[Emplacement de la legende sur le graphique :];

 'northeast' ou 'NE' : en haut a droite (par defaut).

 'north' ou 'N' : en haut au centre.

 'south' ou 'S' : en bas au centre.

 'east' ou 'E' : au milieu a droite.

 'west' ou 'W' : au milieu a gauche.

 'northwest' ou 'NW' : en haut a gauche.

 'southeast' ou 'SE' : en bas a droite.

 'southwest' ou 'SW' : en bas a gauche.

 Les emplacements exterieurs sont aussi pris en charge : 'northoutside', 'southoutside', 'eastoutside' et 'westoutside'.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.legend.properties>)[proprietes de legend]; pour la liste complete des proprietes.


== Exemples

``````matlab
f = figure();
x = linspace(0, 10);
y1 = sin(x);
y2 = cos(x);
ax = gca();
plot(ax, x, y1, 'DisplayName', 'sin(x)');
hold(ax, 'on');
plot(ax, x, y2, 'DisplayName', 'cos(x)');
legend(ax, 'Location', 'N')
``````


#align(center)[#image("legend.svg")]
``````matlab
f = figure();
x = 1:5;
plot(x, x);
hold on
plot(x, x .^ 2);
lgd = legend({'linear'; 'quadratic'}, 'NumColumns', 2);
title(lgd, 'Curves')
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.legend.properties>)[proprietes de legend];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];, #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
