# isnumeric

Renvoie vrai si la variable var est un tableau numérique.

## Syntaxe

- res = isnumeric(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isnumeric renvoie 1 logique si l'argument est un tableau numérique et 0 logique sinon.

<p>Liste des types numériques :</p>

<p>single : simple précision</p>

<p>double : double précision</p>

<p>int8 : entier signé 8 bits</p>

<p>int16 : entier signé 16 bits</p>

<p>int32 : entier signé 32 bits</p>

<p>int64 : entier signé 64 bits</p>

<p>uint8 : entier non signé 8 bits</p>

<p>uint16 : entier non signé 16 bits</p>

<p>uint32 : entier non signé 32 bits</p>

<p>uint64 : entier non signé 64 bits</p>

## Exemples

```matlab
A = 1;
res = isnumeric(A)
```

```matlab
B = single(1+i);
res = isnumeric(B)
```

```matlab
C = logical(1);
res = isnumeric(C)
```

## Voir aussi

[islogical](../types/islogical.md), [isinteger](../types/isinteger.md), [isdouble](../types/isdouble.md), [issingle](../types/issingle.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
