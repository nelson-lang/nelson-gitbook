# height

Nombre de lignes d'une table

## Syntaxe

- H = height(T)

## Argument d'entrée

- T - Tableau d'entrée (table ou autre).

## Argument de sortie

- H - un entier : nombre de lignes de la table ou size(T, 1).

## Description

<p>H = height(T) renvoie le nombre de lignes dans la table T.</p>

<p>La fonction height(T) est équivalente à size(T, 1), qui fournit également le nombre de lignes de la table.</p>

## Exemple

```matlab
T = table();
height(T)
C = {'John', 28, true; 'Alice', 35, false; 'Bob', 42, true};
T = cell2table(C);
height(T)

```

## Voir aussi

[width](../table/width.md), [size](../elementary_functions/size.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
