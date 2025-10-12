# ischar

Renvoie vrai si la variable var est un tableau de caractères (char).

## Syntaxe

- res = ischar(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        ischar renvoie 1 logique (vrai) si l'argument est un tableau de caractères et 0 logique (faux) sinon.

## Exemples

```matlab
A = 3;
res = ischar(A)
```

```matlab
B = 'NelSon';
res = ischar(B)
```

```matlab
C = [1 ; 3];
res = ischar(C)
```

## Voir aussi

[class](../types/class.md), [char](../string/char.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
