#import "../../nelson_help.typ": *

= uibutton <graphics:2_graphics_objects.3_ui_controls.uibutton>

Crée un bouton poussoir ou un bouton à état.

== Syntaxe

- #raw("btn = uibutton()");
- #raw("btn = uibutton(style)");
- #raw("btn = uibutton(parent)");
- #raw("btn = uibutton(parent, style)");
- #raw("btn = uibutton(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: figure créée avec uifigure, ou objet graphique figure.
/ style: style du bouton : 'push' (défaut) ou 'state'.
/ propertyName: nom de propriété : chaîne de caractères.
/ propertyValue: valeur de propriété : valeur compatible avec le nom de propriété.

== Argument de sortie

/ btn: un objet Button ou StateButton.

== Description

#strong[btn \= uibutton]; crée un bouton poussoir dans une nouvelle figure et retourne l'objet Button. Nelson appelle la fonction uifigure pour créer la figure.

 #strong[btn \= uibutton(style)]; crée un bouton du style spécifié : #strong['push']; crée un bouton poussoir (objet Button, callback #strong[ButtonPushedFcn];), #strong['state']; crée un bouton à état (objet StateButton, avec une #strong[Value]; booléenne et un callback #strong[ValueChangedFcn];).

 #strong[btn \= uibutton(parent)]; crée le bouton dans le conteneur parent spécifié.

 #strong[btn \= uibutton(..., propertyName, propertyValue)]; spécifie les propriétés par paires nom-valeur : #strong[Text];, #strong[Icon];, #strong[IconAlignment];, #strong[HorizontalAlignment];, #strong[VerticalAlignment];, #strong[WordWrap];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[FontAngle];, #strong[FontColor];, #strong[BackgroundColor];, #strong[Enable];, #strong[Visible];, #strong[Tooltip];, #strong[Position];, #strong[ButtonPushedFcn]; (push), #strong[Value]; et #strong[ValueChangedFcn]; (state), ...


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Buttons', 'Position', [100 100 420 260]);
btn = uibutton(f, 'Text', 'Run', 'Position', [85 130 110 30]);
sb = uibutton(f, 'state', 'Text', 'Enabled', 'Value', true, 'Position', [225 130 110 30]);
drawnow();
``````


#align(center)[#image("uibutton_example.svg")]
Bouton poussoir avec callback

``````matlab

f = uifigure();
btn = uibutton(f, 'Text', 'Cliquez', 'Position', [100 100 100 22], 'ButtonPushedFcn', @(src, event) disp('appuyé'))

``````

Bouton à état

``````matlab

f = uifigure();
sb = uibutton(f, 'state', 'Text', 'Activer option', 'Value', true)

``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.3_ui_controls.uilabel>)[uilabel];, #nlink(<gui:uifigure>)[uifigure];, #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
