# array2table

Convertir un tableau homogène en table.

## Syntaxe

- T = array2table(A)

## Argument d'entrée

- A - matrice : single, double, types entiers, logique, char, string, struct, cell.

## Argument de sortie

- T - Objet Table.

## Description

<p>T = array2table(A) convertit un tableau m-by-n A en une table m-by-n, où chaque colonne de A devient une variable dans la table résultante T.</p>

<p>Par défaut, array2table utilise le nom du tableau d'entrée, combiné avec le numéro de colonne, pour créer les noms de variables dans la table. Si ces noms ne sont pas des identifiants valides, il attribue des noms par défaut sous la forme 'Var1', 'Var2', ... , 'VarN', où N est le nombre de colonnes de A.</p>

## Exemple

```matlab
A = magic(6);
T = array2table(A)
T = array2table(magic(6))
```

## Voir aussi

[table2array](../table/table2array.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
