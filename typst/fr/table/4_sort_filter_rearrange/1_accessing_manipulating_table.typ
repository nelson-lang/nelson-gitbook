#import "../nelson_help.typ": *

= AccÃ¨s et manipulation des tables dans Nelson <table:4_sort_filter_rearrange.1_accessing_manipulating_table>



== Description

#strong[Insertion dans une table];

 Pour insÃ©rer de nouvelles donnÃ©es dans une table, utilisez la notation par point ou les accolades#strong[{}]; pour une insertion Ã©lÃ©ment par Ã©lÃ©ment. Vous pouvez ajouter de nouvelles lignes, colonnes ou mettre Ã  jour des donnÃ©es existantes.

 voir exemples : #strong[Ajout d'une nouvelle colonne]; et #strong[Mise Ã  jour d'un Ã©lÃ©ment existant];

 

 #strong[Extraction depuis une table];

 Vous pouvez extraire des lignes, colonnes ou Ã©lÃ©ments individuels en utilisant l'indexation ou en rÃ©fÃ©rant les noms de variables.

 voir exemples : #strong[Extraction de colonnes spÃ©cifiques]; et #strong[Extraction de lignes spÃ©cifiques];

 

 #strong[Suppression de donnÃ©es dans une table];

 Dans Nelson, vous pouvez supprimer des lignes, colonnes ou Ã©lÃ©ments spÃ©cifiques d'une table en utilisant l'indexation ou la fonction removevars. Les lignes ou colonnes peuvent Ãªtre supprimÃ©es en dÃ©finissant les indices sur des crochets vides \[\].

 voir exemples : #strong[Suppression de lignes]; et #strong[Suppression de colonnes];

 

 #strong[ConcatÃ©nation horizontale (horzcat)];

 Vous pouvez concatÃ©ner des tables horizontalement (cÃ´te Ã  cÃ´te) en utilisant la fonction horzcat. Cette fonction combine les tables en ajoutant les colonnes d'une table aux colonnes d'une autre.

 voir exemples : #strong[ConcatÃ©nation horizontale];

 

 #strong[ConcatÃ©nation verticale (vertcat)];

 Vous pouvez concatÃ©ner des tables verticalement (l'une sous l'autre) en utilisant la fonction vertcat. Cette fonction combine les tables en ajoutant les lignes d'une table aux lignes d'une autre.

 voir exemples : #strong[ConcatÃ©nation verticale];

 

 #strong[Conversion des types de variables];

 Vous pouvez convertir les variables d'une table en utilisant la propriÃ©tÃ©#strong[VariableTypes];.

 voir exemples : exemple #strong[VariableTypes];

 

 #strong[Organisation des variables];

 Utilisez #strong[addvars];, #strong[movevars];, #strong[renamevars]; et #strong[removevars]; pour manipuler les variables tout en conservant les metadonnees de table.

 voir exemples : #strong[Organisation des variables];

 

 #strong[Metadonnees personnalisees];

 Utilisez #strong[addprop]; et #strong[rmprop]; pour gerer les metadonnees personnalisees stockees dans #strong[T.Properties.CustomProperties];.

 voir exemples : #strong[Metadonnees personnalisees];

 

 #strong[RÃ©sumÃ©];

 Dans Nelson, les tables stockent et manipulent des données hétérogènes. La notation par point et les fonctions de concaténation (horzcat, vertcat) permettent d'insérer des données, d'extraire des parties de table et de concaténer des tables horizontalement ou verticalement.


== Exemples

Adding a New Column

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]

``````

Updating an Existing Element

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15

``````

Extracting Specific Columns

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15
% Extract the 'ID' column from the table
ID_column = T.ID

``````

Extracting Specific Rows

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Update the value in row 1, column 'Score'
T{1, 'Score'} = 15
% Extract the first two rows of the table
rows_1_2 = T(1:2, :)

``````

Removing a Column

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Remove the 'Score' column from the table
T(:, 'Score') = [];

``````

Removing a Row

``````matlab
T = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'})
% Insert a new column 'Score'
T.Score = [10; 20]
% Remove the second row from the table
T(2, :) = [];

``````

Horizontal Concatenation

``````matlab
% Create two tables with the same number of rows
T1 = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'});
T2 = table([10; 20], {'X'; 'Y'}, 'VariableNames', {'Score', 'Grade'});

% Concatenate horizontally
T_horz = [T1, T2]  % or T_horz = horzcat(T1, T2);

``````

Vertical Concatenation

``````matlab
T1 = table([1; 2], {'A'; 'B'}, 'VariableNames', {'ID', 'Label'});
% Create two tables with the same column names
T3 = table([3; 4], {'C'; 'D'}, 'VariableNames', {'ID', 'Label'});

% Concatenate vertically
T_vert = [T1; T3]  % or T_vert = vertcat(T1, T3)

``````

Convert variable types

``````matlab
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
``````

Ajouter et deplacer des variables

``````matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C');
T = movevars(T, 'C', 'Before', 1)
``````

Proprietes personnalisees

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'manual';
T.Properties.CustomProperties.Source
T = rmprop(T, 'Source')
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:7_apply_functions.2_direct_computation_with_table>)[Direct computation with Table];, #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars];, #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars];, #nlink(<data_analysis:summary>)[summary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
  [1.10.0], [VariableTypes property],
  [2.0.0], [fonctions d'organisation des variables et proprietes personnalisees],
)

// Auteur: Allan CORNET
