# table2cell

Convertir une table en tableau de cellules

## Syntaxe

- S = table2cell(T)
- S = table2cell(T, "ToScalar", true)

## Argument d'entrée

- T - un objet table

## Argument de sortie

- C - Tableau de cellules.

## Description

<p>C = table2cell(T) convertit la table T en un tableau de cellules C, où chaque variable de T est transformée en une colonne de cellules dans C.</p>

<p>La sortie C n'inclut aucune propriété de T.Properties.</p>

<p>Si T contient des noms de lignes, ceux-ci ne seront pas inclus dans C.</p>

## Exemple

```matlab
S = ["Y";"Y";"N";"N";"N"];
A = [38;43;38;40;49];
B = [124 93;109 77; 125 83; 117 75; 122 80];
T = table(S, A, B, 'VariableNames',["Smoker" "Age" "BloodPressure"], 'RowNames',["Chang" "Brown" "Ruiz" "Lee" "Garcia"])
C = table2cell(T)
```

## Voir aussi

[cell2table](../table/cell2table.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
