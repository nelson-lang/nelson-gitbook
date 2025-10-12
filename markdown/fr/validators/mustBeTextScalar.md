# mustBeTextScalar

Vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.

## Syntaxe

- mustBeTextScalar(var)
- mustBeTextScalar(var, argPosition)
- C++: void mustBeTextScalar(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : un tableau de chaînes scalaire ou un vecteur ligne de caractères.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeTextScalar vérifie que la valeur est un seul texte (scalaire) ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeTextScalar('true')
mustBeTextScalar(["f", "ff"])
mustBeTextScalar("hello")
```

## Voir aussi

[isscalar](../elementary_functions/isscalar.md), [ischar](../types/ischar.md), [isstring](../types/isstring.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
