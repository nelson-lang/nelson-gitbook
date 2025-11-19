# Accès et manipulation des tables dans Nelson

## 📄 Description

<b>Insertion dans une table</b>

Pour insérer de nouvelles données dans une table, utilisez la notation par point ou les accolades<b>{}</b> pour une insertion élément par élément. Vous pouvez ajouter de nouvelles lignes, colonnes ou mettre à jour des données existantes.

voir exemples : <b>Ajout d'une nouvelle colonne</b> et <b>Mise à jour d'un élément existant</b>

<b>Extraction depuis une table</b>

Vous pouvez extraire des lignes, colonnes ou éléments individuels en utilisant l'indexation ou en référant les noms de variables.

voir exemples : <b>Extraction de colonnes spécifiques</b> et <b>Extraction de lignes spécifiques</b>

<b>Suppression de données dans une table</b>

Dans Nelson, vous pouvez supprimer des lignes, colonnes ou éléments spécifiques d'une table en utilisant l'indexation ou la fonction removevars. Les lignes ou colonnes peuvent être supprimées en définissant les indices sur des crochets vides [].

voir exemples : <b>Suppression de lignes</b> et <b>Suppression de colonnes</b>

<b>Concaténation horizontale (horzcat)</b>

Vous pouvez concaténer des tables horizontalement (côte à côte) en utilisant la fonction horzcat. Cette fonction combine les tables en ajoutant les colonnes d'une table aux colonnes d'une autre.

voir exemples : <b>Concaténation horizontale</b>

<b>Concaténation verticale (vertcat)</b>

Vous pouvez concaténer des tables verticalement (l'une sous l'autre) en utilisant la fonction vertcat. Cette fonction combine les tables en ajoutant les lignes d'une table aux lignes d'une autre.

voir exemples : <b>Concaténation verticale</b>

<b>Conversion des types de variables</b>

Vous pouvez convertir les variables d'une table en utilisant la propriété<b>VariableTypes</b>.

voir exemples : exemple <b>VariableTypes</b>

<b>Résumé</b>

Dans Nelson, les tables offrent un moyen flexible de stocker et manipuler des données hétérogènes. Vous pouvez facilement insérer des données, extraire des parties de la table et concaténer des tables horizontalement ou verticalement en utilisant la notation par point et les fonctions de concaténation (horzcat, vertcat), rendant la manipulation de tables intuitive et puissante pour l'analyse de données.

## 💡 Exemples

Adding a New Column

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]

```

Updating an Existing Element

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15

```

Extracting Specific Columns

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15
% Extract the 'ID' column from the table
ID_column = T.ID

```

Extracting Specific Rows

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15
% Extract the first two rows of the table
rows_1_2 = T(1:2, :)

```

Removing a Column

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Remove the 'Score' column from the table
T(:, 'Score') = [];

```

Removing a Row

```matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Remove the second row from the table
T(2, :) = [];

```

Horizontal Concatenation

```matlab
% Create two tables with the same number of rows
T1 = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'});
T2 = table([10; 20], {'X'; 'Y'}, 'VariableNames', {'Score', 'Grade'});

% Concatenate horizontally
T_horz = [T1, T2]  % or T_horz = horzcat(T1, T2);

```

Vertical Concatenation

```matlab
T1 = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'});
% Create two tables with the same column names
T3 = table([3; 4], {'C'; 'D'}, 'VariableNames', {'ID', 'Label'});

% Concatenate vertically
T_vert = [T1; T3]  % or T_vert = vertcat(T1, T3)

```

Convert variable types

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
T.Properties.VariableTypes
T{:,1}
T{:,2}
T.Properties.VariableTypes = ["string"    "int8"    "double"    "double"];
T{:,1}
T{:,2}
T.Properties.VariableTypes
```

## 🔗 Voir aussi

[table](../table/table.md), [Direct computation with Table](../table/2_direct_compution_with_table.md).

## 🕔 Historique

| Version | 📄 Description         |
| ------- | ---------------------- |
| 1.8.0   | version initiale       |
| 1.10.0  | VariableTypes property |

<!--
## 👤 Auteur

Allan CORNET
-->
