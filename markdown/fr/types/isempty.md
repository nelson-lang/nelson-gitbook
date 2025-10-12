# isempty

Renvoie vrai si la variable var est une matrice vide.

## Syntaxe

- res = isempty(var)

## Argument d'entrée

- var - une variable

## Argument de sortie

- res - un logique : vrai ou faux

## Description

<p>isempty renvoie vrai (1 logique) si l'argument est une matrice vide.</p>

<p>Au moins une de ses dimensions est nulle.</p>

## Exemples

```matlab
A = rand(3, 3, 3);
res = isempty(A)
A(:, :, :) = [];
res = isempty(A)

```

```matlab
B = {};
res = isempty(B)
C = struct()
res = isempty(C)
C = struct([])
res = isempty(C)
```

## Voir aussi

[class](../types/class.md), [isstruct](../integer/isstruct.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
