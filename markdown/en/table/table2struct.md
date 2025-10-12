# table2struct

Convert table to structure array

## Syntax

- S = table2struct(T)
- S = table2struct(T, "ToScalar", true)

## Input argument

- T - a table object

## Output argument

- S - Structure.

## Description

<p>
            S = table2struct(T) converts the table T into a structure array S, where each variable in T is represented as a field in S.</p>

<p>If T is an m-by-n table, S will be an m-by-1 structure array with n fields.</p>

<p>the output S will not contain any table properties from T.Properties.</p>

<p>
                S = table2struct(T, "ToScalar", true) converts the table T into a scalar structure S, where each variable in T becomes a field in S.</p>

<p>If T is an m-by-n table, S will contain n fields, and each field will have m rows.</p>

## Example

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
S1 = table2struct(T)
S1 = table2struct(T, "ToScalar", true)
```

## See also

[struct2table](../table/struct2table.md), [table](../table/table.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
