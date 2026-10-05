# nelson.mixin.indexing.RedefinesDot

Customize dot indexing of a class.

## 📝 Syntax

- classdef MyClass < nelson.mixin.indexing.RedefinesDot

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.indexing.RedefinesDot.

## 📤 Output argument

- obj - an object supporting customized dot indexing.

## 📄 Description


Derive from <b>nelson.mixin.indexing.RedefinesDot</b> to give a class its own dot indexing behavior for names that are not declared properties or methods. A subclass implements the protected methods <b>dotReference(obj, indexOp)</b> (value of <b>obj.name</b>), <b>dotAssign(obj, indexOp, value)</b> (<b>obj.name = value</b>) and <b>dotListLength(obj, indexOp, indexContext)</b>. 

<b>indexOp</b> is a <b>nelson.indexing.IndexingOperation</b> whose <b>Name</b>property holds the accessed name. Declared properties and methods keep their normal behavior; only unknown names call <b>dotReference</b>/<b>dotAssign</b>.

## 💡 Example

A dynamic name/value bag.

```matlab
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
