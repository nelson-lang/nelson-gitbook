# istable

Déterminer si l'entrée est une table.

## Syntaxe

- tf = istable(A)

## Argument d'entrée

- A - Tableau d'entrée.

## Argument de sortie

- tf - un logique : vrai si c'est une table.

## Description

<p>tf = istable(A) renvoie true si A est une table, et false sinon.</p>

## Exemple

```matlab
T = table();
istable(T)
M = magic(6);
istable(M)
```

## Voir aussi

[isa](../types/isa.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
