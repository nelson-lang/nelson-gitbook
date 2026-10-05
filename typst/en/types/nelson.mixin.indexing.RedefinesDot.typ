#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesDot <types:nelson.mixin.indexing.RedefinesDot>

Customize dot indexing of a class.

== Syntax

- #raw("classdef MyClass < nelson.mixin.indexing.RedefinesDot");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.indexing.RedefinesDot.

== Output argument

/ obj: an object supporting customized dot indexing.

== Description

Derive from #strong[nelson.mixin.indexing.RedefinesDot]; to give a class its own dot indexing behavior for names that are not declared properties or methods. A subclass implements the protected methods #strong[dotReference(obj, indexOp)]; (value of #strong[obj.name];), #strong[dotAssign(obj, indexOp, value)]; (#strong[obj.name \= value];) and #strong[dotListLength(obj, indexOp, indexContext)];.

 #strong[indexOp]; is a #strong[nelson.indexing.IndexingOperation]; whose #strong[Name]; property holds the accessed name. Declared properties and methods keep their normal behavior; only unknown names call #strong[dotReference];\/#strong[dotAssign];.


== Example

A dynamic name\/value bag.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesDot
  properties (Access = private)
    Store
  end
  methods
    function obj = Bag()
      obj.Store = struct();
    end
  end
  methods (Access = protected)
    function varargout = dotReference(obj, indexOp)
      varargout{1} = obj.Store.(indexOp.Name);
    end
    function obj = dotAssign(obj, indexOp, val)
      obj.Store.(indexOp.Name) = val;
    end
    function n = dotListLength(obj, indexOp, ctx)
      n = 1;
    end
  end
end
``````


== See also

#nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen];, #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
