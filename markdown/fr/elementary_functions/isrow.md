# isrow

Déterminer si l'entrée est un vecteur ligne.

## Syntaxe

- tf = isrow(V)

## Argument d'entrée

- V - une variable

## Argument de sortie

- tf - booléen : résultat de 'isrow'.

## Description

<p>
            isrow(V) renvoie true si size(V) renvoie [1, n] avec un entier non négatif n, et false sinon.</p>

## Exemple

```matlab
isrow([1:4])
isrow([1:4]')
```

## Voir aussi

[iscolumn](../elementary_functions/iscolumn.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
