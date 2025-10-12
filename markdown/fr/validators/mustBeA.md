# mustBeA

Vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.

## Syntaxe

- mustBeA(var, classNames)
- mustBeA(var, classNames, argPosition)
- C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)

## Argument d'entrée

- var - une variable.
- classNames - une variable : nom du type de données ou de la classe.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeA vérifie que la valeur d'entrée appartient à l'une des classes spécifiées.</p>

## Exemple

```matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
```

## Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
