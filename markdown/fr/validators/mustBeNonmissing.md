# mustBeNonmissing

Vérifie que la valeur n'est pas manquante ou renvoie une erreur.

## Syntaxe

- mustBeNonmissing(var)
- mustBeNonmissing(var, argPosition)
- C++: void mustBeNonmissing(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode ismissing.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>
            mustBeNonmissing checks that value is not missing or raise an error.</p>

## Exemple

```matlab
mustBeNonmissing(1)
mustBeNonmissing([])
mustBeNonmissing(["hello" string(NaN)])

```

## Voir aussi

[ismissing](../elementary_functions/ismissing.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
