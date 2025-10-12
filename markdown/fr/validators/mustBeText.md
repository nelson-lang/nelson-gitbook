# mustBeText

Vérifie que la valeur est un texte ou renvoie une erreur.

## Syntaxe

- mustBeText(var)
- mustBeText(var, argPosition)
- C++: void mustBeText(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : un tableau de chaînes, une cellule de chaînes, ou un vecteur ligne de caractères.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>mustBeText vérifie que la valeur est un texte ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeText('true')
mustBeText(["f", "ff"])
mustBeText("hello")
```

## Voir aussi

[ischar](../types/ischar.md), [isstring](../types/isstring.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
