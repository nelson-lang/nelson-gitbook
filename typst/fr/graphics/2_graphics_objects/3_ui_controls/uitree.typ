#import "../../nelson_help.typ": *

= uitree <graphics:2_graphics_objects.3_ui_controls.uitree>

Crée un arbre ou un arbre à cases à cocher.

== Syntaxe

- #raw("h = uitree()");
- #raw("h = uitree(parent)");
- #raw("h = uitree(..., propertyName, propertyValue)");

== Argument d'entrée

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Argument de sortie

/ h: UI object.

== Description

#strong[t \= uitree]; crée un arbre ; #strong[uitree(parent, 'checkbox')]; crée un arbre à cases à cocher. Les enfants sont des objets uitreenode. Propriétés : #strong[SelectedNodes];, #strong[Multiselect]; (arbre standard), #strong[CheckedNodes];\/#strong[CheckedNodesChangedFcn]; (arbre à cases), #strong[Editable];, #strong[SelectionChangedFcn];, #strong[NodeExpandedFcn];, #strong[NodeCollapsedFcn];. Utiliser #strong[expand(t)]; \/ #strong[collapse(t)];.


== Exemples

Capture du composant UI pour l'image d'aide.

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
n2 = uitreenode(n1, 'Text', 'Pomme');
expand(t);

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
