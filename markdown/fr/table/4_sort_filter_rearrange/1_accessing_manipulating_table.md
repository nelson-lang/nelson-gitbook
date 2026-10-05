# AccÃ¨s et manipulation des tables dans Nelson



## 📄 Description


<b>Insertion dans une table</b> 

Pour insÃ©rer de nouvelles donnÃ©es dans une table, utilisez la notation par point ou les accolades<b>{}</b> pour une insertion Ã©lÃ©ment par Ã©lÃ©ment. Vous pouvez ajouter de nouvelles lignes, colonnes ou mettre Ã  jour des donnÃ©es existantes. 

voir exemples : <b>Ajout d'une nouvelle colonne</b> et <b>Mise Ã  jour d'un Ã©lÃ©ment existant</b> 

 

<b>Extraction depuis une table</b> 

Vous pouvez extraire des lignes, colonnes ou Ã©lÃ©ments individuels en utilisant l'indexation ou en rÃ©fÃ©rant les noms de variables. 

voir exemples : <b>Extraction de colonnes spÃ©cifiques</b> et <b>Extraction de lignes spÃ©cifiques</b> 

 

<b>Suppression de donnÃ©es dans une table</b> 

Dans Nelson, vous pouvez supprimer des lignes, colonnes ou Ã©lÃ©ments spÃ©cifiques d'une table en utilisant l'indexation ou la fonction removevars. Les lignes ou colonnes peuvent Ãªtre supprimÃ©es en dÃ©finissant les indices sur des crochets vides []. 

voir exemples : <b>Suppression de lignes</b> et <b>Suppression de colonnes</b> 

 

<b>ConcatÃ©nation horizontale (horzcat)</b> 

Vous pouvez concatÃ©ner des tables horizontalement (cÃ´te Ã  cÃ´te) en utilisant la fonction horzcat. Cette fonction combine les tables en ajoutant les colonnes d'une table aux colonnes d'une autre. 

voir exemples : <b>ConcatÃ©nation horizontale</b> 

 

<b>ConcatÃ©nation verticale (vertcat)</b> 

Vous pouvez concatÃ©ner des tables verticalement (l'une sous l'autre) en utilisant la fonction vertcat. Cette fonction combine les tables en ajoutant les lignes d'une table aux lignes d'une autre. 

voir exemples : <b>ConcatÃ©nation verticale</b> 

 

<b>Conversion des types de variables</b> 

Vous pouvez convertir les variables d'une table en utilisant la propriÃ©tÃ©<b>VariableTypes</b>. 

voir exemples : exemple <b>VariableTypes</b> 

 

<b>Organisation des variables</b> 

Utilisez <b>addvars</b>, <b>movevars</b>, <b>renamevars</b> et <b>removevars</b> pour manipuler les variables tout en conservant les metadonnees de table. 

voir exemples : <b>Organisation des variables</b> 

 

<b>Metadonnees personnalisees</b> 

Utilisez <b>addprop</b> et <b>rmprop</b> pour gerer les metadonnees personnalisees stockees dans <b>T.Properties.CustomProperties</b>. 

voir exemples : <b>Metadonnees personnalisees</b> 

 

<b>RÃ©sumÃ©</b> 

Dans Nelson, les tables stockent et manipulent des données hétérogènes. La notation par point et les fonctions de concaténation (horzcat, vertcat) permettent d'insérer des données, d'extraire des parties de table et de concaténer des tables horizontalement ou verticalement.

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
Ajouter et deplacer des variables

```matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C');
T = movevars(T, 'C', 'Before', 1)
```
Proprietes personnalisees

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'manual';
T.Properties.CustomProperties.Source
T = rmprop(T, 'Source')
```


## 🔗 Voir aussi

[table](../../table/1_create_convert_tables/table.md), [Direct computation with Table](../../table/7_apply_functions/2_direct_computation_with_table.md), [addvars](../../table/4_sort_filter_rearrange/addvars.md), [movevars](../../table/4_sort_filter_rearrange/movevars.md), [summary](../../data_analysis/summary.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | version initiale |
| 1.10.0   | VariableTypes property |
| 2.0.0   | fonctions d'organisation des variables et proprietes personnalisees |

<!--
## 👤 Auteur

Allan CORNET
-->
