# nelson.mixin.indexing.RedefinesParen

Customize parentheses indexing of a class.

## 📝 Syntax

- classdef MyClass < nelson.mixin.indexing.RedefinesParen

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.indexing.RedefinesParen.

## 📤 Output argument

- obj - an object supporting customized parenthesis indexing.

## 📄 Description

Derive from <b>nelson.mixin.indexing.RedefinesParen</b> to give a class its own parentheses indexing behavior, for example to build a container that indexes its stored data rather than an array of objects.

A subclass implements these protected methods:

<b>parenReference(obj, indexOp)</b> - value of <b>obj(...)</b>.

<b>parenAssign(obj, indexOp, value)</b> - result of <b>obj(...) = value</b>.

<b>parenDelete(obj, indexOp)</b> - result of <b>obj(...) = []</b>.

<b>parenListLength(obj, indexOp, indexContext)</b> - number of values a paren reference produces.

and these public methods: <b>size(obj)</b>, <b>cat(dim, ...)</b> and the static <b>empty(...)</b>.

The <b>indexOp</b> argument is a <b>nelson.indexing.IndexingOperation</b> array. For a chained expression such as <b>obj(i).field</b> the hook is called once with the whole chain: <b>numel(indexOp)</b> is the number of operations (2 here), <b>indexOp(1)</b> is the parentheses operation and <b>indexOp(2)</b> the <b>.field</b> operation. Apply the whole chain to the stored data with the dynamic form <b>obj.Data.(indexOp)</b>, or read a single level through <b>indexOp(k).Indices{...}</b> / <b>indexOp(k).Name</b>. The base class provides <b>numel</b>, <b>length</b>, <b>isempty</b>, <b>ndims</b>, <b>end</b>, <b>horzcat</b>and <b>vertcat</b> in terms of the abstract <b>size</b>/<b>cat</b>.

A single-level index (<b>obj(i)</b>) calls the hook with a scalar <b>indexOp</b>(<b>numel(indexOp) == 1</b>). A few chain shapes are still evaluated one step at a time (the hook sees a single operation, the value is identical): a level of the form <b>.method(args)</b>, a chain using the <b>end</b> keyword after the first level, and chained assignment.

## 💡 Example

A container that redefines parentheses indexing.

```matlab
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
```

## 🔗 See also

[nelson.mixin.indexing.RedefinesBrace](../types/nelson.mixin.indexing.RedefinesBrace.md), [nelson.mixin.indexing.RedefinesDot](../types/nelson.mixin.indexing.RedefinesDot.md), [nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
