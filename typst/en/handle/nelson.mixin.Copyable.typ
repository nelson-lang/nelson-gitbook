#import "nelson_help.typ": *

= nelson.mixin.Copyable <handle:nelson.mixin.Copyable>

Add a copy method to a handle class.

== Syntax

- #raw("classdef MyClass < nelson.mixin.Copyable");
- #raw("b = copy(a)");

== Input argument

/ a: a handle object of a class deriving from nelson.mixin.Copyable.

== Output argument

/ b: an independent shallow copy of a.

== Description

Derive a handle class from #strong[nelson.mixin.Copyable]; to give it a #strong[copy]; method that returns an independent shallow copy of an object.

 #strong[copy(a)]; creates a new object and copies each property value from #strong[a];. Properties declared #strong[NonCopyable]; are not copied and keep their default value in the copy. The copy is shallow: handle-valued properties are shared between the original and the copy.

 #strong[nelson.mixin.Copyable]; is itself a handle class.


== Example

A copyable handle class.

``````matlab
classdef Node < nelson.mixin.Copyable
  properties
    Value = 0
  end
end
a = Node();
a.Value = 42;
b = copy(a);
b.Value = 7;
a.Value   % still 42
``````


== See also

#nlink(<handle:handle>)[handle];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
