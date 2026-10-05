# nelson.mixin.indexing.RedefinesBrace

Customize brace indexing of a class.

## 📝 Syntax

- classdef MyClass < nelson.mixin.indexing.RedefinesBrace

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.indexing.RedefinesBrace.

## 📤 Output argument

- obj - an object supporting customized brace indexing.

## 📄 Description


Derive from <b>nelson.mixin.indexing.RedefinesBrace</b> to give a class its own brace indexing behavior. A subclass implements the protected methods <b>braceReference(obj, indexOp)</b> (value of <b>obj{...}</b>), <b>braceAssign(obj, indexOp, value)</b> (<b>obj{...} = value</b>) and <b>braceListLength(obj, indexOp, indexContext)</b>. 

<b>indexOp</b> is a <b>nelson.indexing.IndexingOperation</b> whose <b>Indices</b>property is a cell array of the subscripts.

## 💡 Example

A cell-like container.

```matlab
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
```


## 🔗 See also

[nelson.mixin.indexing.RedefinesParen](../types/nelson.mixin.indexing.RedefinesParen.md), [nelson.indexing.IndexingOperation](../types/nelson.indexing.IndexingOperation.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
