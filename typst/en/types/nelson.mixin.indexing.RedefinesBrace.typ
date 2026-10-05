#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesBrace <types:nelson.mixin.indexing.RedefinesBrace>

Customize brace indexing of a class.

== Syntax

- #raw("classdef MyClass < nelson.mixin.indexing.RedefinesBrace");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.indexing.RedefinesBrace.

== Output argument

/ obj: an object supporting customized brace indexing.

== Description

Derive from #strong[nelson.mixin.indexing.RedefinesBrace]; to give a class its own brace indexing behavior. A subclass implements the protected methods #strong[braceReference(obj, indexOp)]; (value of #strong[obj{...}];), #strong[braceAssign(obj, indexOp, value)]; (#strong[obj{...} \= value];) and #strong[braceListLength(obj, indexOp, indexContext)];.

 #strong[indexOp]; is a #strong[nelson.indexing.IndexingOperation]; whose #strong[Indices]; property is a cell array of the subscripts.


== Example

A cell-like container.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesBrace
  properties
    Data
  end
  methods
    function obj = Bag(x)
      obj.Data = x;
    end
  end
  methods (Access = protected)
    function varargout = braceReference(obj, indexOp)
      varargout{1} = obj.Data{indexOp.Indices{1}};
    end
    function obj = braceAssign(obj, indexOp, val)
      obj.Data{indexOp.Indices{1}} = val;
    end
    function n = braceListLength(obj, indexOp, ctx)
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
