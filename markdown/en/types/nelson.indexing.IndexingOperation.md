# nelson.indexing.IndexingOperation

Describe one element of an indexing expression.

## 📝 Syntax

- op = nelson.indexing.IndexingOperation(type, indices)
- op = nelson.indexing.IndexingOperation(type, indices, name)

## 📥 Input argument

- type - a nelson.indexing.IndexingOperationType, or its name as a char/string ('Paren', 'Brace', 'Dot', ...).
- indices - cell array of the paren/brace subscripts (empty for a dot operation).
- name - the field name (dot operation only).

## 📤 Output argument

- op - a scalar nelson.indexing.IndexingOperation.

## 📄 Description


<b>nelson.indexing.IndexingOperation</b> describes one indexing operation. It is passed to the <b>parenReference</b>/<b>parenAssign</b>, <b>braceReference</b>/<b>braceAssign</b> and <b>dotReference</b>/<b>dotAssign</b> methods of classes that derive from <b>nelson.mixin.indexing.Redefines\*</b>. A chained expression is passed as a <b>1×N array</b>of operations (one per level of the chain), so <b>indexOp</b> can be scalar or an array. 

Properties: <b>Type</b> (a nelson.indexing.IndexingOperationType), <b>Indices</b> (cell array of the subscripts, for Paren/Brace) and <b>Name</b> (the field name, for Dot). 

An IndexingOperation (scalar or array) can be applied to any value with the dynamic form <b>value.(indexOp)</b>, which performs the corresponding <b>subsref</b> (read) or <b>subsasgn</b> (write) chain. This is the recommended way to forward the received chain from a hook, for example <b>obj.Data.(indexOp)</b>.

## 💡 Examples

Build a paren indexing operation.

```matlab
op = nelson.indexing.IndexingOperation('Paren', {2});
char(op.Type)
op.Indices{1}
```
Apply an operation array to a value with the dynamic form value.(indexOp).

```matlab
data = struct('f', {[1 2 3], [4 5 6 7]});
chain = [nelson.indexing.IndexingOperation('Paren', {2}), ...
         nelson.indexing.IndexingOperation('Dot', {}, 'f')];
data.(chain)   % same as data(2).f
```


## 🔗 See also

[nelson.indexing.IndexingOperationType](../types/nelson.indexing.IndexingOperationType.md), [nelson.mixin.indexing.RedefinesParen](../types/nelson.mixin.indexing.RedefinesParen.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
