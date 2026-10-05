#import "../../nelson_help.typ": *

= uitreenode <graphics:2_graphics_objects.3_ui_controls.uitreenode>

Crée un nœud d'arbre.

== Syntaxe

- #raw("h = uitreenode()");
- #raw("h = uitreenode(parent)");
- #raw("h = uitreenode(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI object.

== Description

#strong[n \= uitreenode(parent)]; crée un nœud dans un uitree ou sous un autre TreeNode. Propriétés : #strong[Text];, #strong[NodeData];, #strong[Icon];, #strong[ContextMenu];.


== Exemples

Capture du composant UI pour l'image d'aide.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tree nodes', 'Position', [100 100 420 260]);
tr = uitree(f, 'Position', [70 40 210 180]);
n1 = uitreenode(tr, 'Text', 'Project');
uitreenode(n1, 'Text', 'Input');
uitreenode(n1, 'Text', 'Results');
expand(tr);
drawnow();
``````


#align(center)[#image("uitreenode_example.svg")]
uitreenode

``````matlab

f = uifigure();
t = uitree(f);
n = uitreenode(t, 'Text', 'Nœud 1', 'NodeData', [1 2 3]);

``````


== Voir aussi

#nlink(<gui:uifigure>)[uifigure];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
