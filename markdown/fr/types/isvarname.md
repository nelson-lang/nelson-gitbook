# isvarname

Renvoie vrai si l'entrée est un nom de variable valide.

## Syntaxe

- res = isvarname(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isvarname renvoie 1 logique si l'argument est un nom de variable valide et 0 logique sinon.

## Exemple

```matlab
isvarname(4)
isvarname('t')
isvarname('8t')
isvarname('t8t')
```

## Voir aussi

[ischar](../types/ischar.md), [namelengthmax](../core/namelengthmax.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
