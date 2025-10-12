# substruct

Create structure argument for subsasgn or subsref

## Syntaxe

- S = substruct(type1, subs1, type2, subs2, ...)

## Description

<p>
            S = substruct(type1, subs1, type2, subs2, ...) generates a structure containing fields necessary for an overloaded subsref or subsasgn method.</p>

<p>Each type char vector is limited to '.', '()', or '{}'.</p>

<p>The associated subs argument should be a field name (for the '.' type) or a cell array containing index vectors (for the '()' or '{}' types).</p>

## Exemple

```matlab
S = struct('field1', 10, 'field2', 'Hello', 'field3', [1, 2, 3]);
% Create a substruct for accessing the 'field2'
s = substruct('.', 'field2');
% Use subsref to get the value of 'field2'
value = subsref(S, s);
```

## Voir aussi

[subsref](../operators/subsref.md), [subsasgn](../operators/subsasgn.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
