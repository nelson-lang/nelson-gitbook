#import "../../nelson_help.typ": *

= uilabel <graphics:2_graphics_objects.3_ui_controls.uilabel>

Crée un composant étiquette (label).

== Syntaxe

- #raw("lbl = uilabel()");
- #raw("lbl = uilabel(parent)");
- #raw("lbl = uilabel(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: figure créée avec uifigure, ou objet graphique figure.
/ propertyName: nom de propriété : chaîne de caractères.
/ propertyValue: valeur de propriété : valeur compatible avec le nom de propriété.

== Argument de sortie

/ lbl: un objet Label.

== Description

#strong[lbl \= uilabel]; crée une étiquette dans une nouvelle figure et retourne l'objet Label. Nelson appelle la fonction uifigure pour créer la figure.

 #strong[lbl \= uilabel(parent)]; crée l'étiquette dans le conteneur parent spécifié.

 #strong[lbl \= uilabel(..., propertyName, propertyValue)]; spécifie les propriétés par paires nom-valeur : #strong[Text];, #strong[Interpreter];, #strong[HorizontalAlignment];, #strong[VerticalAlignment];, #strong[WordWrap];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[FontAngle];, #strong[FontColor];, #strong[BackgroundColor];, #strong[Enable];, #strong[Visible];, #strong[Tooltip];, #strong[Position];, ...


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Labels', 'Position', [100 100 460 280]);
titleLabel = uilabel(f, 'Text', 'Etat du capteur', 'FontSize', 18, 'FontWeight', 'bold', 'BackgroundColor', [0.88 0.94 1.00], 'Position', [55 165 350 42]);
valueLabel = uilabel(f, 'Text', '42.5 C', 'FontSize', 32, 'FontWeight', 'bold', 'FontColor', [0.10 0.35 0.72], 'HorizontalAlignment', 'center', 'BackgroundColor', [0.94 0.96 0.98], 'Position', [55 85 350 64]);
drawnow();
``````


#align(center)[#image("uilabel_example.svg")]
Étiquette dans une uifigure

``````matlab

f = uifigure();
lbl = uilabel(f, 'Text', 'Résultat :', 'Position', [100 100 100 22], 'FontWeight', 'bold')

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.3_ui_controls.uibutton>)[uibutton];, #nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
