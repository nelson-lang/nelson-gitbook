#import "nelson_help.typ": *

= nelson.indexing.IndexingOperation <types:nelson.indexing.IndexingOperation>

Décrit un élément d'une expression d'indexation.

== Syntaxe

- #raw("op = nelson.indexing.IndexingOperation(type, indices)");
- #raw("op = nelson.indexing.IndexingOperation(type, indices, name)");

== Argument d'entrée

/ type: un nelson.indexing.IndexingOperationType, ou son nom en char\/string ('Paren', 'Brace', 'Dot', ...).
/ indices: tableau de cellules des indices paren\/brace (vide pour une opération dot).
/ name: le nom du champ (opération dot uniquement).

== Argument de sortie

/ op: un nelson.indexing.IndexingOperation scalaire.

== Description

#strong[nelson.indexing.IndexingOperation]; décrit une opération d'indexation. Elle est passée aux méthodes #strong[parenReference];\/#strong[parenAssign];, #strong[braceReference];\/#strong[braceAssign]; et #strong[dotReference];\/#strong[dotAssign]; des classes dérivant de #strong[nelson.mixin.indexing.Redefines\*];. Une expression chaînée est passée sous forme de #strong[tableau 1×N]; d'opérations (une par niveau de la chaîne) : #strong[indexOp]; peut donc être scalaire ou un tableau.

 Propriétés : #strong[Type]; (un nelson.indexing.IndexingOperationType), #strong[Indices]; (tableau de cellules des indices, pour Paren\/Brace) et #strong[Name]; (le nom du champ, pour Dot).

 Un IndexingOperation (scalaire ou tableau) s'applique à une valeur avec la forme dynamique #strong[value.(indexOp)];, qui effectue la chaîne #strong[subsref]; (lecture) ou #strong[subsasgn]; (écriture) correspondante. C'est la manière recommandée de retransmettre la chaîne reçue depuis un hook, par exemple #strong[obj.Data.(indexOp)];.


== Exemples

Construire une opération d'indexation par parenthèses.

``````matlab
op = nelson.indexing.IndexingOperation('Paren', {2});
char(op.Type)
op.Indices{1}
``````

Appliquer un tableau d'opérations à une valeur avec la forme dynamique value.(indexOp).

``````matlab
data = struct('f', {[1 2 3], [4 5 6 7]});
chain = [nelson.indexing.IndexingOperation('Paren', {2}), ...
         nelson.indexing.IndexingOperation('Dot', {}, 'f')];
data.(chain)   % équivaut à data(2).f
``````


== Voir aussi

#nlink(<types:nelson.indexing.IndexingOperationType>)[nelson.indexing.IndexingOperationType];, #nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
