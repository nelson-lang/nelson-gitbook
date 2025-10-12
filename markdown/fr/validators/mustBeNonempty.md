# mustBeNonempty

Vérifie que la valeur n'est pas vide ou renvoie une erreur.

## Syntaxe

- mustBeNonempty(var)
- mustBeNonempty(var, argPosition)
- C++: void mustBeNonempty(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode isempty.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeNonempty vérifie que la valeur n'est pas vide ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeNonempty(1)
mustBeNonempty([])
```

## Voir aussi

[isempty](../types/isempty.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
