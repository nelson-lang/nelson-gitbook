# table

A table-like array with named variables, capable of holding different data types

## 📝 Syntax

- T = table()
- T = table(var1, ... , varN)
- T = table(... , Name, Value)
- T = table('Size', sz, 'VariableTypes', types)
- T = table(..., 'VariableNames', names, 'RowNames', rowNames)

## 📥 Input argument

- var1, ... , varN - Input variables: Input variables are specified as arrays that all have the same number of rows. These variables can differ in size and data type.
- Name, Value - Optional arguments are specified as pairs in the format Name1, Value1, ... , NameN, ValueN, where Name represents the argument name and Value is its corresponding value. These name-value pairs must come after any other arguments, but the order of the pairs themselves is flexible.
- sz - Two-element vector that specifies the number of rows and variables for a preallocated table.
- types - Variable types used with <b>Size</b>. Supported values include numeric integer types, floating point types, logical, string, cell, cellstr and char.
- names - Variable names specified as a string array or cell array of character vectors.
- rowNames - Row names specified as a string array or cell array of character vectors.

## 📤 Output argument

- T - A table object.

## 📄 Description


Table arrays are designed to store column-oriented, such as columns from text files or spreadsheets. 

Each column of data is stored in a variable within the table, and these variables can have different data types and sizes, provided they all share the same number of rows. 

Table variables have names, similar to structure fields. 

 

To access data in a table, use the following methods: 

 

- Dot notation (T.varname) to extract a single variable. 

- Curly braces (T{rows, vars}) to extract an array from specific rows and variables. 

- Parentheses (T(rows, vars)) to return a subset of the table. 

 

<b>T = table(var1, ..., varN)</b> creates a table from the specified input variables<b>var1,...,varN</b>. 

The variables can vary in size and data type, but they must all have the same number of rows. 

If the inputs are workspace variables, their names are used as the variable names in the resulting table. 

Otherwise, the table assigns default names in the format 'Var1', 'Var2', and so on, where N is the total number of variables. 

 

<b>T = table(..., Name, Value)</b> allows you to specify additional options using one or more name-value pair arguments. 

For instance, you can set custom variable names by using the 'VariableNames' name-value pair. 

Supported table metadata is exposed through <b>T.Properties</b>. This structure contains <b>VariableNames</b>, <b>VariableTypes</b>, <b>RowNames</b>, <b>DimensionNames</b>, <b>Description</b>, <b>UserData</b>, variable metadata fields, and <b>CustomProperties</b>. 

A table can be preallocated with <b>Size</b> and <b>VariableTypes</b>. The constructor creates variables with the requested types and default or user-provided variable names. 

This syntax can be used in combination with any of the input arguments from the previous forms. 

 

<b>T = table()</b> creates an empty table with 0 rows and 0 columns.

## 💡 Examples



```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
T.Names
T{2, 2}
T{'Alice', 'Age'}
T{2, 'Age'}
T(:, 'Age')
T(2:3,1:3)

```


```matlab
N = {'John'; 'Alice'; 'Bob'; 'Diana'};
A = [28; 34; 22; 30];
H = [175; 160; 180; 165];
W = [70; 55; 80; 60];
T = table(N, A, H, W, 'VariableNames', {'Name', 'Age', 'Height', 'Weight'})
```


```matlab
N = {'John'; 'Alice'; 'Bob'; 'Diana'};
A = [28; 34; 22; 30];
H = [175; 160; 180; 165];
W = [70; 55; 80; 60];

% Define the row names
RowNames = {'Person1', 'Person2', 'Person3', 'Person4'};

% Create the table with row names
T = table(A, H, W, 'RowNames', RowNames, 'VariableNames', {'Age', 'Height_cm', 'Weight_kg'})
T('Person2', 1:2)

```
Preallocate a table with specific variable types

```matlab
T = table('Size', [3 2], 'VariableTypes', {'double', 'string'}, ...
          'VariableNames', {'Value', 'Label'});
T.Value = [10; 20; 30];
T.Label = ["low"; "medium"; "high"];
T.Properties.Description = 'Example table';
T
```
Use table properties and custom properties

```matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'}, ...
          'RowNames', {'r1', 'r2'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'manual';
T.Properties.CustomProperties.Source
T.Properties.DimensionNames
```


## 🔗 See also

[Accessing and Manipulating Tables in Nelson](../../table/4_sort_filter_rearrange/1_accessing_manipulating_table.md), [Direct computation with Table](../../table/7_apply_functions/2_direct_computation_with_table.md), [cell2table](../../table/1_create_convert_tables/cell2table.md), [array2table](../../table/1_create_convert_tables/array2table.md), [struct2table](../../table/1_create_convert_tables/struct2table.md), [addvars](../../table/4_sort_filter_rearrange/addvars.md), [movevars](../../table/4_sort_filter_rearrange/movevars.md), [summary](../../data_analysis/summary.md), [addprop](../../table/4_sort_filter_rearrange/addprop.md), [rmprop](../../table/4_sort_filter_rearrange/rmprop.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | initial version |
| 2.0.0   | classdef table, table properties, preallocation and metadata support |

<!--
## 👤 Author

Allan CORNET
-->
