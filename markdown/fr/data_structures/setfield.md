# setfield

Définir le contenu d'un champ de structure.

## Syntaxe

- stOut = setfield(stIn, fieldname, fieldvalue)
- stOut = setfield(stIn, fieldname1, fieldvalue1, ..., fieldnameN, fieldvalueN)

## Argument d'entrée

- stIn - une structure.
- fieldname - une chaîne ou un vecteur de caractères.
- fieldvalue - une valeur de variable.

## Argument de sortie

- stOut - une structure : résultat.

## Description

<p>Définit le contenu du champ spécifié à la valeur donnée.</p>

<p>Syntaxe alternative : S.(fieldname) = fieldvalue</p>

<p>Syntaxe alternative : S(idx1, idx2).(fieldname) = fieldvalue</p>

## Exemple

```matlab
A = {};
setfield(A, 'vv', 3)
```

## Voir aussi

[struct](../data_structures/struct.md), [getfield](../data_structures/getfield.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
