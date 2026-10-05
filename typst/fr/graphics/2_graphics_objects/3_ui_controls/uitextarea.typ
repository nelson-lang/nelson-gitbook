#import "../../nelson_help.typ": *

= uitextarea <graphics:2_graphics_objects.3_ui_controls.uitextarea>

Crée une zone de texte multiligne.

== Syntaxe

- #raw("h = uitextarea()");
- #raw("h = uitextarea(parent)");
- #raw("h = uitextarea(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[ta \= uitextarea]; crée une zone de texte multiligne. #strong[Value]; est un cell array de chaînes (une par ligne). Propriétés : #strong[Editable];, #strong[WordWrap];, #strong[HorizontalAlignment];, #strong[Placeholder];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Text area', 'Position', [100 100 420 260]);
ta = uitextarea(f, 'Position', [95 75 230 115]);
ta.Value = {'Line one'; 'Line two'; 'Line three'};
drawnow();
``````


#align(center)[#image("uitextarea_example.svg")]
uitextarea

``````matlab

f = uifigure();
ta = uitextarea(f, 'Value', {'première ligne', 'seconde ligne'});

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
