#import "../../nelson_help.typ": *

= uigridlayout <graphics:2_graphics_objects.3_ui_controls.uigridlayout>

Crée un gestionnaire de disposition en grille.

== Syntaxe

- #raw("h = uigridlayout()");
- #raw("h = uigridlayout(parent)");
- #raw("h = uigridlayout(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet conteneur.

== Description

#strong[g \= uigridlayout]; crée un gestionnaire de disposition qui positionne ses enfants dans une grille configurable. #strong[g \= uigridlayout(parent, \[r c\])]; crée une grille r par c. #strong[RowHeight]; et #strong[ColumnWidth]; acceptent des tailles fixes en pixels, des tailles pondérées ('1x', '2x', ...) et 'fit'. Les enfants sont placés via leurs options #strong[Layout.Row]; \/ #strong[Layout.Column]; (scalaire ou intervalle \[début fin\]) ; les composants ajoutés sans placement explicite remplissent la grille de gauche à droite puis de haut en bas. Autres propriétés : #strong[RowSpacing];, #strong[ColumnSpacing];, #strong[Padding];, #strong[BackgroundColor];, #strong[Scrollable];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Grid layout', 'Position', [100 100 420 260]);
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'One');
b2 = uibutton(g, 'Text', 'Two');
b3 = uibutton(g, 'Text', 'Span');
b3.Layout.Row = 2;
b3.Layout.Column = [1 2];
drawnow();
``````


#align(center)[#image("uigridlayout_example.svg")]
uigridlayout

``````matlab

f = uifigure();
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'Un');
b2 = uibutton(g, 'Text', 'Deux');
b3 = uibutton(g, 'Text', 'Fusion');
b3.Layout.Column = [1 2];
g.RowHeight = {22, '1x'};

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
