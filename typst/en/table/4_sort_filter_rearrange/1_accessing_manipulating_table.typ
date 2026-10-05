#import "../nelson_help.typ": *

= Accessing and Manipulating Tables in Nelson <table:4_sort_filter_rearrange.1_accessing_manipulating_table>



== Description

#strong[Insertion into a Table];

 To insert new data into a table, use dot notation or curly braces#strong[{}]; for specific element-wise insertion. You can add new rows, columns, or update existing data.

 see examples: #strong[Adding a New Column]; and#strong[Updating an Existing Element];

 

 #strong[Extraction from a Table];

 You can extract specific rows, columns, or individual elements using indexing or by referencing variable names.

 see examples: #strong[Extracting Specific Columns]; and#strong[Extracting Specific Rows];

 

 #strong[Removing Data from a Table];

 In Nelson, you can remove rows, columns, or specific elements from a table by using indexing or the removevars function. Rows or columns can be removed by setting the indices to empty brackets \[\].

 see examples: #strong[Removing Rows]; and #strong[Removing Columns];

 

 #strong[Horizontal Concatenation (horzcat)];

 You can concatenate tables horizontally (side by side) using the horzcat function. This function combines tables by appending the columns of one table to the columns of another table.

 see examples: #strong[Horizontal Concatenation];

 

 #strong[Vertical Concatenation (vertcat)];

 You can concatenate tables vertically (one below the other) using the vertcat function. This function combines tables by appending the rows of one table to the rows of another table.

 see examples: #strong[Vertical Concatenation];

 

 #strong[Convert variable types];

 You can convert table variables by using the #strong[VariableTypes]; property.

 see examples: #strong[VariableTypes]; example

 

 #strong[Variable organization helpers];

 Use #strong[addvars];, #strong[movevars];, #strong[renamevars]; and #strong[removevars]; to manipulate table variables while preserving table metadata.

 see examples: #strong[Add and move variables];

 

 #strong[Custom table metadata];

 Use #strong[addprop]; and #strong[rmprop]; to manage custom metadata stored in #strong[T.Properties.CustomProperties];.

 see examples: #strong[Custom properties];

 

 #strong[Summary];

 In Nelson, tables store and manipulate heterogeneous data. Dot notation and concatenation functions such as horzcat and vertcat support insertion, extraction, and horizontal or vertical concatenation.


== Examples

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

Add and move variables

``````matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C');
T = movevars(T, 'C', 'Before', 1)
``````

Custom properties

``````matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'manual';
T.Properties.CustomProperties.Source
T = rmprop(T, 'Source')
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];, #nlink(<table:7_apply_functions.2_direct_computation_with_table>)[Direct computation with Table];, #nlink(<table:4_sort_filter_rearrange.addvars>)[addvars];, #nlink(<table:4_sort_filter_rearrange.movevars>)[movevars];, #nlink(<data_analysis:summary>)[summary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
  [1.10.0], [VariableTypes property],
  [2.0.0], [variable organization helpers and custom properties],
)

// Author: Allan CORNET
