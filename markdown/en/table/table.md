# table

A table-like array with named variables, capable of holding different data types

## Syntax

- T = table()
- T = table(var1, ... , varN)
- T = table(... , Name, Value)

## Input argument

- var1, ... , varN - Input variables: Input variables are specified as arrays that all have the same number of rows. These variables can differ in size and data type.
- Name, Value - Optional arguments are specified as pairs in the format Name1, Value1, ... , NameN, ValueN, where Name represents the argument name and Value is its corresponding value. These name-value pairs must come after any other arguments, but the order of the pairs themselves is flexible

## Output argument

- T - A table object.

## Description

<p>Table arrays are designed to store column-oriented, such as columns from text files or spreadsheets.</p>
<p>Each column of data is stored in a variable within the table, and these variables can have different data types and sizes, provided they all share the same number of rows.</p>
<p>Table variables have names, similar to structure fields.</p>
<p></p>
<p>To access data in a table, use the following methods:</p>
<p></p>
<p>- Dot notation (T.varname) to extract a single variable.</p>
<p>- Curly braces (T{rows, vars}) to extract an array from specific rows and variables.</p>
<p>- Parentheses (T(rows, vars)) to return a subset of the table.</p>
<p></p>
<p>
            <b>T = table(var1, ..., varN)</b> creates a table from the specified input variables <b>var1,...,varN</b>.</p>
<p>The variables can vary in size and data type, but they must all have the same number of rows.</p>
<p>If the inputs are workspace variables, their names are used as the variable names in the resulting table.</p>
<p>Otherwise, the table assigns default names in the format 'Var1', 'Var2', and so on, where N is the total number of variables.</p>
<p></p>
<p>
                <b>T = table(..., Name, Value)</b> allows you to specify additional options using one or more name-value pair arguments.</p>
<p>For instance, you can set custom variable names by using the 'VariableNames' name-value pair.</p>
<p>This syntax can be used in combination with any of the input arguments from the previous forms.</p>
<p></p>
<p>
                    <b>T = table()</b> creates an empty table with 0 rows and 0 columns.</p>

## Examples

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

## See also

[Accessing and Manipulating Tables in Nelson](../table/1_accessing_manipulating_table.md), [Direct computation with Table](../table/2_direct_compution_with_table.md), [cell2table](../table/cell2table.md), [array2table](../table/array2table.md), [struct2table](../table/struct2table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
