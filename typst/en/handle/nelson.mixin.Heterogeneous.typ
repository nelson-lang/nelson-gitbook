#import "nelson_help.typ": *

= nelson.mixin.Heterogeneous <handle:nelson.mixin.Heterogeneous>

Allow arrays that mix related classes.

== Syntax

- #raw("classdef MyBase < nelson.mixin.Heterogeneous");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.Heterogeneous.

== Output argument

/ obj: an object that can participate in a heterogeneous array.

== Description

Derive a class from #strong[nelson.mixin.Heterogeneous]; to allow arrays that contain a mix of objects of that class and of its subclasses. Such an array takes the class of the nearest common #strong[nelson.mixin.Heterogeneous]; ancestor of its elements.

 Without this mixin, concatenating objects of different classes is an error. With it, related classes sharing a heterogeneous root can be stored together in one array.


== Example

A heterogeneous shape hierarchy.

``````matlab
classdef Shape < nelson.mixin.Heterogeneous
end
% classdef Circle < Shape ... end
% classdef Square < Shape ... end
% shapes = [Circle(), Square()];   % a Shape array
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
