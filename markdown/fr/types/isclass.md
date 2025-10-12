# isclass

Renvoie vrai si la variable var est un objet de classe.

## Syntaxe

- res = isclass(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

        isclass renvoie 1 logique (vrai) si l'argument est un objet de classe et 0 logique (faux) sinon.

## Exemple

```matlab
A = 3;
res = isclass(A)
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
res = isclass(c)
```

## Voir aussi

[class](../types/class.md), [isstruct](../integer/isstruct.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
