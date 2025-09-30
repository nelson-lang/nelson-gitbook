# Accessing and Manipulating Tables in Nelson

## Description

<p>
            <b>Insertion into a Table</b>
        </p>
<p>To insert new data into a table, use dot notation or curly braces <b>{}</b> for specific element-wise insertion. You can add new rows, columns, or update existing data.</p>
<p>see examples: <b>Adding a New Column</b> and <b>Updating an Existing Element</b>
    </p>
<p></p>
<p>
        <b>Extraction from a Table</b>
    </p>
<p>You can extract specific rows, columns, or individual elements using indexing or by referencing variable names.</p>
<p>see examples: <b>Extracting Specific Columns</b> and <b>Extracting Specific Rows</b>
</p>
<p></p>
<p>
    <b>Removing Data from a Table</b>
</p>
<p>In Nelson, you can remove rows, columns, or specific elements from a table by using indexing or the removevars function. Rows or columns can be removed by setting the indices to empty brackets [].</p>
<p>see examples: <b>Removing Rows</b> and <b>Removing Columns</b>
</p>
<p></p>
<p>
    <b>Horizontal Concatenation (horzcat)</b>
</p>
<p>You can concatenate tables horizontally (side by side) using the horzcat function. This function combines tables by appending the columns of one table to the columns of another table.</p>
<p>see examples: <b>Horizontal Concatenation</b>
</p>
<p></p>
<p>
    <b>Vertical Concatenation (vertcat)</b>
</p>
<p>You can concatenate tables vertically (one below the other) using the vertcat function. This function combines tables by appending the rows of one table to the rows of another table.</p>
<p>see examples: <b>Vertical Concatenation</b>
</p>
<p></p>
<p>
    <b>Convert variable types</b>
</p>
<p>You can convert table variables by using the <b>VariableTypes</b> property.</p>
<p>see examples: <b>VariableTypes</b> example</p>
<p></p>
<p>
    <b>Summary</b>
</p>
<p>In Nelson, tables provide a flexible way to store and manipulate heterogeneous data. You can easily insert data, extract parts of the table, and concatenate tables both horizontally and vertically using built-in functionality like dot notation and concatenation functions (horzcat, vertcat), making table manipulation intuitive and powerful for data analysis.</p>

## Examples

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

## See also

[table](../table/table.md), [Direct computation with Table](../table/2_direct_compution_with_table.md).

## History

| Version | Description            |
| ------- | ---------------------- |
| 1.8.0   | initial version        |
| 1.10.0  | VariableTypes property |

## Author

Allan CORNET
