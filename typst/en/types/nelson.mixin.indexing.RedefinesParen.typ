#import "nelson_help.typ": *

= nelson.mixin.indexing.RedefinesParen <types:nelson.mixin.indexing.RedefinesParen>

Customize parentheses indexing of a class.

== Syntax

- #raw("classdef MyClass < nelson.mixin.indexing.RedefinesParen");

== Input argument

/ obj: an object of a class deriving from nelson.mixin.indexing.RedefinesParen.

== Output argument

/ obj: an object supporting customized parenthesis indexing.

== Description

Derive from #strong[nelson.mixin.indexing.RedefinesParen]; to give a class its own parentheses indexing behavior, for example to build a container that indexes its stored data rather than an array of objects.

 A subclass implements these protected methods:

 #strong[parenReference(obj, indexOp)]; - value of #strong[obj(...)];.

 #strong[parenAssign(obj, indexOp, value)]; - result of #strong[obj(...) \= value];.

 #strong[parenDelete(obj, indexOp)]; - result of #strong[obj(...) \= \[\]];.

 #strong[parenListLength(obj, indexOp, indexContext)]; - number of values a paren reference produces.

 and these public methods: #strong[size(obj)];, #strong[cat(dim, ...)]; and the static #strong[empty(...)];.

 The #strong[indexOp]; argument is a #strong[nelson.indexing.IndexingOperation]; array. For a chained expression such as #strong[obj(i).field]; the hook is called once with the whole chain: #strong[numel(indexOp)]; is the number of operations (2 here), #strong[indexOp(1)]; is the parentheses operation and #strong[indexOp(2)]; the #strong[.field]; operation. Apply the whole chain to the stored data with the dynamic form #strong[obj.Data.(indexOp)];, or read a single level through #strong[indexOp(k).Indices{...}]; \/ #strong[indexOp(k).Name];. The base class provides #strong[numel];, #strong[length];, #strong[isempty];, #strong[ndims];, #strong[end];, #strong[horzcat]; and #strong[vertcat]; in terms of the abstract #strong[size];\/#strong[cat];.

 A single-level index (#strong[obj(i)];) calls the hook with a scalar #strong[indexOp]; (#strong[numel(indexOp) \=\= 1];). A few chain shapes are still evaluated one step at a time (the hook sees a single operation, the value is identical): a level of the form #strong[.method(args)];, a chain using the #strong[end]; keyword after the first level, and chained assignment.


== Example

A container that redefines parentheses indexing.

``````matlab
classdef Bag < nelson.mixin.indexing.RedefinesParen
  properties
    Data
  end
  methods
    function obj = Bag(x)
      obj.Data = x;
    end
    function varargout = size(obj, varargin)
      varargout{1} = size(obj.Data, varargin{:});
    end
    function obj = cat(dim, varargin)
      acc = [];
      for k = 1:numel(varargin)
        acc = cat(dim, acc, varargin{k}.Data);
      end
      obj = Bag(acc);
    end
  end
  methods (Access = protected)
    function varargout = parenReference(obj, indexOp)
      % indexOp may hold the whole chain; apply it to the stored data.
      [varargout{1:nargout}] = obj.Data.(indexOp);
    end
    function obj = parenAssign(obj, indexOp, varargin)
      obj.Data.(indexOp) = varargin{1};
    end
    function obj = parenDelete(obj, indexOp)
      obj.Data.(indexOp) = [];
    end
    function n = parenListLength(obj, indexOp, ctx)
      n = 1;
    end
  end
end
``````


== See also

#nlink(<types:nelson.mixin.indexing.RedefinesBrace>)[nelson.mixin.indexing.RedefinesBrace];, #nlink(<types:nelson.mixin.indexing.RedefinesDot>)[nelson.mixin.indexing.RedefinesDot];, #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
