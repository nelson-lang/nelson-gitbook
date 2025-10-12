# flip

Inverser l'ordre des éléments

## Syntaxe

- B = flip(A, dim)

## Argument d'entrée

- A - un tableau
- dim - un entier positif

## Argument de sortie

- B - tableau inversé.

## Description

<p>flip renvoie un nouveau tableau de A inversé selon la dimension dim.</p>

## Exemple

```matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
```

## Voir aussi

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md), [flipdim](../elementary_functions/flipdim.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
