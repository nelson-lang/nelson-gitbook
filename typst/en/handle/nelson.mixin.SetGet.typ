#import "nelson_help.typ": *

= nelson.mixin.SetGet <handle:nelson.mixin.SetGet>

Add set and get property access to a handle class.

== Syntax

- #raw("classdef MyClass < nelson.mixin.SetGet");
- #raw("set(obj, name, value)");
- #raw("value = get(obj, name)");

== Input argument

/ obj: a handle object of a class deriving from nelson.mixin.SetGet.
/ name: a property name (char or string), or a cell array of names.
/ value: the value to assign.

== Output argument

/ value: the property value.

== Description

Derive a handle class from #strong[nelson.mixin.SetGet]; to give it #strong[set]; and #strong[get]; methods for reading and writing properties by name.

 #strong[set(obj, name, value)]; assigns a property; #strong[set(obj, n1, v1, n2, v2, ...)]; assigns several. #strong[get(obj, name)]; returns a property value; #strong[get(obj)]; returns a structure of all properties. Property names are matched case-insensitively.


== Example

Name-based property access.

``````matlab
classdef Widget < nelson.mixin.SetGet
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100, 'Height', 40);
get(w, 'Width')
``````


== See also

#nlink(<handle:handle>)[handle];, #nlink(<handle:nelson.mixin.SetGetExactNames>)[nelson.mixin.SetGetExactNames];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
