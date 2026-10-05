#import "../../nelson_help.typ": *

= uitogglebutton <graphics:2_graphics_objects.3_ui_controls.uitogglebutton>

Crée un bouton bascule dans un groupe de boutons.

== Syntaxe

- #raw("h = uitogglebutton()");
- #raw("h = uitogglebutton(parent)");
- #raw("h = uitogglebutton(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: conteneur parent.
/ propertyName, propertyValue: paires nom-valeur.

== Argument de sortie

/ h: objet composant UI.

== Description

#strong[tb \= uitogglebutton(bg)]; crée un bouton bascule dans un uibuttongroup à sélection exclusive. Propriétés : #strong[Value];, #strong[Text];, #strong[Icon];, #strong[IconAlignment];, alignements, #strong[BackgroundColor];, polices.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Toggle buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 60 230 140]);
tb1 = uitogglebutton(bg, 'Text', 'A', 'Position', [30 70 70 30]);
tb2 = uitogglebutton(bg, 'Text', 'B', 'Position', [125 70 70 30]);
tb2.Value = true;
drawnow();
``````


#align(center)[#image("uitogglebutton_example.svg")]
uitogglebutton

``````matlab

f = uifigure();
bg = uibuttongroup(f);
tb1 = uitogglebutton(bg, 'Text', 'A');
tb2 = uitogglebutton(bg, 'Text', 'B');

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
