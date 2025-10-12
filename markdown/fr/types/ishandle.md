# ishandle

Renvoie vrai si la variable var est un objet handle.

## Syntaxe

- res = ishandle(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        ishandle renvoie 1 logique (vrai) si l'argument est un objet handle et 0 logique (faux) sinon.

## Exemple

```matlab
A = 3;
res = ishandle(A)
```

## Voir aussi

[isa](../types/isa.md), [isvalid](../handle/isvalid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
