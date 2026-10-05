#import "../../nelson_help.typ": *

= uipanel <graphics:2_graphics_objects.3_ui_controls.uipanel>

Crée un panneau conteneur.

== Syntaxe

- #raw("h = uipanel()");
- #raw("h = uipanel(parent)");
- #raw("h = uipanel(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet conteneur.

== Description

#strong[p \= uipanel]; crée un panneau dans une nouvelle figure (uifigure). Un panneau regroupe des composants UI ; les enfants sont positionnés relativement au panneau. Propriétés principales : #strong[Title];, #strong[TitlePosition]; ('lefttop', 'centertop', 'righttop'), #strong[BackgroundColor];, #strong[ForegroundColor];, #strong[BorderType]; ('line', 'none'), #strong[BorderWidth];, #strong[BorderColor];, #strong[Position];, #strong[Scrollable];, #strong[AutoResizeChildren];, #strong[SizeChangedFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Panel', 'Position', [100 100 420 260]);
p = uipanel(f, 'Title', 'Settings', 'Position', [80 45 260 170]);
uicheckbox(p, 'Text', 'Enabled', 'Value', true, 'Position', [25 95 120 24]);
uibutton(p, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
``````


#align(center)[#image("uipanel_example.svg")]
uipanel

``````matlab

f = uifigure();
p = uipanel(f, 'Title', 'Options', 'Position', [20 20 260 221]);
b = uibutton(p, 'Text', 'OK', 'Position', [20 20 100 22]);

``````


== Voir aussi

#nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
