#import "../../nelson_help.typ": *

= uitreenode <graphics:2_graphics_objects.3_ui_controls.uitreenode>

Create tree node.

== Syntax

- #raw("h = uitreenode()");
- #raw("h = uitreenode(parent)");
- #raw("h = uitreenode(..., propertyName, propertyValue)");

== Input argument

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI object.

== Description

#strong[n \= uitreenode(parent)]; creates a tree node in a uitree or under another TreeNode. Properties: #strong[Text];, #strong[NodeData];, #strong[Icon];, #strong[ContextMenu];.


== Examples

Captured UI component for the help image.

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
n = uitreenode(t, 'Text', 'Node 1', 'NodeData', [1 2 3]);

``````


== See also

#nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
