#import "../../nelson_help.typ": *

= uitab <graphics:2_graphics_objects.3_ui_controls.uitab>

Crée un onglet.

== Syntaxe

- #raw("h = uitab()");
- #raw("h = uitab(parent)");
- #raw("h = uitab(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet conteneur.

== Description

#strong[t \= uitab]; crée un onglet dans un groupe d'onglets et retourne l'objet Tab. Si le parent fourni n'est pas un TabGroup, un uitabgroup implicite est créé. Propriétés principales : #strong[Title];, #strong[BackgroundColor];, #strong[ForegroundColor];, #strong[Scrollable];. La géométrie de l'onglet est gérée par le TabGroup parent (#strong[Position]; en lecture seule).


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tabs', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t = uitab(tg, 'Title', 'Data');
uitab(tg, 'Title', 'Options');
uibutton(t, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
``````


#align(center)[#image("uitab_example.svg")]
uitab

``````matlab

f = uifigure();
tg = uitabgroup(f);
t = uitab(tg, 'Title', 'Réglages');
b = uibutton(t, 'Text', 'Appliquer', 'Position', [20 20 100 22]);

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
