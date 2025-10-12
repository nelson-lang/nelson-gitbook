# table2struct

Convertir une table en tableau de structures

## Syntaxe

- S = table2struct(T)
- S = table2struct(T, "ToScalar", true)

## Argument d'entrée

- T - un objet table

## Argument de sortie

- S - Structure.

## Description

<p>S = table2struct(T) convertit la table T en un tableau de structures S, où chaque variable de T est représentée comme un champ dans S.</p>

<p>Si T est une table m-by-n, S sera un tableau de structures m-by-1 avec n champs.</p>

<p>La sortie S ne contiendra pas les propriétés de table provenant de T.Properties.</p>

<p>S = table2struct(T, "ToScalar", true) convertit la table T en une structure scalaire S, où chaque variable de T devient un champ dans S.</p>

<p>Si T est une table m-by-n, S contiendra n champs, et chaque champ aura m lignes.</p>

## Exemple

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
```

## Voir aussi

[struct2table](../table/struct2table.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
