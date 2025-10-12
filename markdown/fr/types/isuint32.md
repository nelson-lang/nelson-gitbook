# isuint32

Renvoie vrai si la variable var est un tableau d'entiers non signés 32 bits.

## Syntaxe

- res = isuint32(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isuint32 renvoie 1 logique si l'argument est un tableau d'entiers non signés 32 bits et 0 logique sinon.

## Exemples

```matlab
A = 3;
res = isuint32(A)
```

```matlab
B = uint32(3);
res = isuint32(B)
```

## Voir aussi

[isa](../types/isa.md), [uint32](../integer/uint32.md), [isinteger](../types/isinteger.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
