#import "nelson_help.typ": *

= nelson.mixin.SetGetExactNames <handle:nelson.mixin.SetGetExactNames>

Set and get property access with case-sensitive names.

== Syntax

- #raw("classdef MyClass < nelson.mixin.SetGetExactNames");
- #raw("set(obj, name, value)");
- #raw("value = get(obj, name)");

== Input argument

/ obj: a handle object of a class deriving from nelson.mixin.SetGetExactNames.
/ name: a property name (char or string), or a cell array of names, spelled with the exact case.
/ value: the value to assign.

== Output argument

/ value: the property value.

== Description

Derive a handle class from #strong[nelson.mixin.SetGetExactNames]; to give it #strong[set]; and #strong[get]; methods for reading and writing properties by name. It behaves exactly like #strong[nelson.mixin.SetGet];, from which it derives, except that property names are matched #strong[case-sensitively];: a name that differs from the declared property only in case is rejected.

 #strong[set(obj, name, value)]; assigns a property; #strong[set(obj, n1, v1, n2, v2, ...)]; assigns several. #strong[get(obj, name)]; returns a property value; #strong[get(obj)]; returns a structure of all properties.


== Example

Case-sensitive name-based property access.

``````matlab
classdef Widget < nelson.mixin.SetGetExactNames
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100);
get(w, 'Width')     % returns 100
get(w, 'width')     % error: 'width' is not the declared name 'Width'
``````


== See also

#nlink(<handle:handle>)[handle];, #nlink(<handle:nelson.mixin.SetGet>)[nelson.mixin.SetGet];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
