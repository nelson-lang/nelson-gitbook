#import "nelson_help.typ": *

= nelson.mixin.util.PropertyGroup <types:nelson.mixin.util.PropertyGroup>

A titled group of properties for custom object display.

== Syntax

- #raw("g = nelson.mixin.util.PropertyGroup(propertyList)");
- #raw("g = nelson.mixin.util.PropertyGroup(propertyList, title)");

== Input argument

/ propertyList: cell array of property names.
/ title: optional group title (char or string).

== Output argument

/ g: a scalar nelson.mixin.util.PropertyGroup.

== Description

#strong[nelson.mixin.util.PropertyGroup]; groups object properties for display. A #strong[getPropertyGroups]; method of a #strong[nelson.mixin.CustomDisplay]; subclass returns an array of property groups, each rendered with its title followed by its properties.

 Properties: #strong[Title];, #strong[PropertyList]; and the read-only #strong[NumProperties];.


== Example

Create a property group.

``````matlab
g = nelson.mixin.util.PropertyGroup({'X', 'Y'}, 'Coordinates');
g.Title
g.NumProperties
``````


== See also

#nlink(<handle:nelson.mixin.CustomDisplay>)[nelson.mixin.CustomDisplay];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
