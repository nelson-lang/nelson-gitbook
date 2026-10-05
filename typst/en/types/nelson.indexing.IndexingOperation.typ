#import "nelson_help.typ": *

= nelson.indexing.IndexingOperation <types:nelson.indexing.IndexingOperation>

Describe one element of an indexing expression.

== Syntax

- #raw("op = nelson.indexing.IndexingOperation(type, indices)");
- #raw("op = nelson.indexing.IndexingOperation(type, indices, name)");

== Input argument

/ type: a nelson.indexing.IndexingOperationType, or its name as a char\/string ('Paren', 'Brace', 'Dot', ...).
/ indices: cell array of the paren\/brace subscripts (empty for a dot operation).
/ name: the field name (dot operation only).

== Output argument

/ op: a scalar nelson.indexing.IndexingOperation.

== Description

#strong[nelson.indexing.IndexingOperation]; describes one indexing operation. It is passed to the #strong[parenReference];\/#strong[parenAssign];, #strong[braceReference];\/#strong[braceAssign]; and #strong[dotReference];\/#strong[dotAssign]; methods of classes that derive from #strong[nelson.mixin.indexing.Redefines\*];. A chained expression is passed as a #strong[1×N array]; of operations (one per level of the chain), so #strong[indexOp]; can be scalar or an array.

 Properties: #strong[Type]; (a nelson.indexing.IndexingOperationType), #strong[Indices]; (cell array of the subscripts, for Paren\/Brace) and #strong[Name]; (the field name, for Dot).

 An IndexingOperation (scalar or array) can be applied to any value with the dynamic form #strong[value.(indexOp)];, which performs the corresponding #strong[subsref]; (read) or #strong[subsasgn]; (write) chain. This is the recommended way to forward the received chain from a hook, for example #strong[obj.Data.(indexOp)];.


== Examples

Build a paren indexing operation.

``````matlab
op = nelson.indexing.IndexingOperation('Paren', {2});
char(op.Type)
op.Indices{1}
``````

Apply an operation array to a value with the dynamic form value.(indexOp).

``````matlab
data = struct('f', {[1 2 3], [4 5 6 7]});
chain = [nelson.indexing.IndexingOperation('Paren', {2}), ...
         nelson.indexing.IndexingOperation('Dot', {}, 'f')];
data.(chain)   % same as data(2).f
``````


== See also

#nlink(<types:nelson.indexing.IndexingOperationType>)[nelson.indexing.IndexingOperationType];, #nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
