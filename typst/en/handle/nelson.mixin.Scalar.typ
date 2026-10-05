#import "nelson_help.typ": *

= nelson.mixin.Scalar <handle:nelson.mixin.Scalar>

Restrict a class to scalar instances.

== Syntax

- #raw("classdef MyClass < nelson.mixin.Scalar");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.Scalar.

== Output argument

/ obj: a scalar object instance.

== Description

Derive from #strong[nelson.mixin.Scalar]; to declare that a class can only have scalar instances. Concatenating instances of the class into a non-scalar array, with #strong[\[a b\]]; or #strong[\[a; b\]];, raises an error with identifier #strong[Nelson:class:concatenationScalar];.

 Use this mixin for objects that represent a single entity and for which an array of objects has no meaning.


== Example

A scalar-only class.

``````matlab
classdef Config < nelson.mixin.Scalar
  properties
    Name = ''
  end
end
% a = [Config(), Config()]   % errors: objects can only be scalar
``````


== See also

#nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
