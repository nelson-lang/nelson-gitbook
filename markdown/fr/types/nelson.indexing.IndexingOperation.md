# nelson.indexing.IndexingOperation

Décrit un élément d'une expression d'indexation.

## 📝 Syntaxe

- op = nelson.indexing.IndexingOperation(type, indices)
- op = nelson.indexing.IndexingOperation(type, indices, name)

## 📥 Argument d'entrée

- type - un nelson.indexing.IndexingOperationType, ou son nom en char/string ('Paren', 'Brace', 'Dot', ...).
- indices - tableau de cellules des indices paren/brace (vide pour une opération dot).
- name - le nom du champ (opération dot uniquement).

## 📤 Argument de sortie

- op - un nelson.indexing.IndexingOperation scalaire.

## 📄 Description


<b>nelson.indexing.IndexingOperation</b> décrit une opération d'indexation. Elle est passée aux méthodes <b>parenReference</b>/<b>parenAssign</b>, <b>braceReference</b>/<b>braceAssign</b>et <b>dotReference</b>/<b>dotAssign</b> des classes dérivant de <b>nelson.mixin.indexing.Redefines\*</b>. Une expression chaînée est passée sous forme de <b>tableau 1×N</b> d'opérations (une par niveau de la chaîne) : <b>indexOp</b> peut donc être scalaire ou un tableau. 

Propriétés : <b>Type</b> (un nelson.indexing.IndexingOperationType), <b>Indices</b> (tableau de cellules des indices, pour Paren/Brace) et <b>Name</b> (le nom du champ, pour Dot). 

Un IndexingOperation (scalaire ou tableau) s'applique à une valeur avec la forme dynamique <b>value.(indexOp)</b>, qui effectue la chaîne <b>subsref</b> (lecture) ou <b>subsasgn</b>(écriture) correspondante. C'est la manière recommandée de retransmettre la chaîne reçue depuis un hook, par exemple <b>obj.Data.(indexOp)</b>.

## 💡 Exemples

Construire une opération d'indexation par parenthèses.

```matlab
op = nelson.indexing.IndexingOperation('Paren', {2});
char(op.Type)
op.Indices{1}
```
Appliquer un tableau d'opérations à une valeur avec la forme dynamique value.(indexOp).

```matlab
data = struct('f', {[1 2 3], [4 5 6 7]});
chain = [nelson.indexing.IndexingOperation('Paren', {2}), ...
         nelson.indexing.IndexingOperation('Dot', {}, 'f')];
data.(chain)   % équivaut à data(2).f
```


## 🔗 Voir aussi

[nelson.indexing.IndexingOperationType](../types/nelson.indexing.IndexingOperationType.md), [nelson.mixin.indexing.RedefinesParen](../types/nelson.mixin.indexing.RedefinesParen.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
