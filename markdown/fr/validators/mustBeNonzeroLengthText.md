# mustBeNonzeroLengthText

Vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.

## Syntaxe

- mustBeNonzeroLengthText(var)
- mustBeNonzeroLengthText(var, argPosition)
- C++: void mustBeNonzeroLengthText(const ArrayOfVector& args, int argPosition)

## Argument d'entrée

- var - une variable : un tableau de chaînes, une cellule de chaînes, ou un vecteur ligne de caractères.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeNonzeroLengthText vérifie que la valeur est un texte de longueur non nulle ou renvoie une erreur.</p>

## Exemple

```matlab
mustBeNonzeroLengthText('true')
mustBeNonzeroLengthText("hello")
mustBeNonzeroLengthText('')
```

## Voir aussi

[ischar](../types/ischar.md), [isstring](../types/isstring.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
