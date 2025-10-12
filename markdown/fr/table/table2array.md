# table2array

Convertir une table en tableau homogène.

## Syntaxe

- A = table2array(T)

## Argument d'entrée

- T - Objet table.

## Argument de sortie

- A - matrice : single, double, types entiers, logique, char, string, struct, cell.

## Description

<p>A = table2array(T) convertit la table d'entrée T en un tableau homogène A, où les variables de T deviennent les colonnes de A.</p>

<p>La sortie A ne conserve pas les propriétés de la table provenant de T.Properties.</p>

<p>Si T est une table avec des noms de lignes, ces noms ne seront pas inclus dans A.</p>

## Exemple

```matlab
A = magic(6);
T = array2table(A);
A = table2array(T)
```

## Voir aussi

[array2table](../table/array2table.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
