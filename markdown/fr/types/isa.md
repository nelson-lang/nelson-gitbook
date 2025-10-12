# isa

Renvoie vrai si var est un objet de la classe str.

## Syntaxe

- res = isa(var, str)

## Argument d'entrée

- var - une variable
- str - une chaîne : nom de la classe attendu

## Argument de sortie

- res - un logique : vrai ou faux

## Description

<p>isa renvoie 1 logique (vrai) si l'argument est un tableau de cellules et 0 logique (faux) sinon.</p>

<p>str peut aussi être 'numeric', 'float' ou 'integer' :</p>

<p>numeric : tableau à virgule flottante ou entier : double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</p>

<p>float : tableau flottant en simple ou double précision : double, single</p>

<p>integer : tableau entier signé ou non signé : int8, uint8, int16, uint16, int32, uint32, int64, uint64</p>

<p>Si var est un objet handle, str peut être 'handle' ou le nom de type du handle.</p>

## Exemples

```matlab
A = 3;
res = isa(A, 'double')
```

```matlab
B = {'NelSon', 3, true};
res = isa(B, 'cell')
```

```matlab
B = {'NelSon', 3, true};
res = isa(B, 'cell')
```

## Voir aussi

[class](../types/class.md), [isinteger](../integer/isinteger.md), [isnumeric](../types/isnumeric.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
