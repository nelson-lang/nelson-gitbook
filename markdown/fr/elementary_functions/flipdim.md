# flipdim

Inverser un tableau selon une dimension spécifiée

## Syntaxe

- B = flipdim(A, dim)

## Argument d'entrée

- A - un tableau
- dim - un entier positif

## Argument de sortie

- B - flipped array.

## Description

<p>flipdim renvoie un nouveau tableau de A inversé selon la dimension dim.</p>

<p>flipdim est similaire à flip et reste disponible pour compatibilité avec d'anciens scripts.</p>

## Exemple

```matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
```

## Voir aussi

[flip](../elementary_functions/flip.md), [flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
