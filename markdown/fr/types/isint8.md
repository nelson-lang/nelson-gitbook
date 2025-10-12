# isint8

Renvoie vrai si la variable var est un tableau d'entiers signés 8 bits.

## Syntaxe

- res = isint8(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isint8 renvoie 1 logique si l'argument est un tableau d'entiers signés 8 bits et 0 logique sinon.

## Exemples

```matlab
A = 3;
res = isint8(A)
```

```matlab
B = int8(3);
res = isint8(B)
```

## Voir aussi

[isa](../types/isa.md), [int8](../integer/int8.md), [isinteger](../types/isinteger.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
