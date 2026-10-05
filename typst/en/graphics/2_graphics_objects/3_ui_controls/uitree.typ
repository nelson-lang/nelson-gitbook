#import "../../nelson_help.typ": *

= uitree <graphics:2_graphics_objects.3_ui_controls.uitree>

Create tree or check box tree component.

== Syntax

- #raw("h = uitree()");
- #raw("h = uitree(parent)");
- #raw("h = uitree(..., propertyName, propertyValue)");

== Input argument

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI object.

== Description

#strong[t \= uitree]; creates a tree; #strong[uitree(parent, 'checkbox')]; creates a check box tree. Children are uitreenode objects. Properties: #strong[SelectedNodes];, #strong[Multiselect]; (standard tree), #strong[CheckedNodes];\/#strong[CheckedNodesChangedFcn]; (checkbox tree), #strong[Editable];, #strong[SelectionChangedFcn];, #strong[NodeExpandedFcn];, #strong[NodeCollapsedFcn];. Use #strong[expand(t)]; \/ #strong[collapse(t)];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tree', 'Position', [100 100 420 260]);
tr = uitree(f, 'Position', [70 40 210 180]);
n1 = uitreenode(tr, 'Text', 'Fruits');
uitreenode(n1, 'Text', 'Apple');
uitreenode(n1, 'Text', 'Banana');
expand(tr);
drawnow();
``````


#align(center)[#image("uitree_example.svg")]
uitree

``````matlab

f = uifigure();
t = uitree(f);
n1 = uitreenode(t, 'Text', 'Fruits');
n2 = uitreenode(n1, 'Text', 'Apple');
expand(t);

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
