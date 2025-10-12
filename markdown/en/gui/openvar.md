# openvar

Open variable in the Variable Editor

## Syntax

- openvar(varname)

## Input argument

- varname: a string or row vector characters - Name of the variable to open. Must exist in the current workspace.

## Description

<p>
            openvar(varname) opens the variable named varname in Nelson's Variable Editor for graphical inspection and editing.</p>

<p>Any changes made to the variable within the editor are immediately applied to the workspace context.</p>

<p>The Variable Editor supports scalars, vectors, matrices, strings, cell arrays, tables and structures. Multidimensional arrays can be viewed but may have limited edit capabilities.</p>

<p>You can also open a variable by double-clicking it in the Variables panel.</p>

<p>The editor synchronizes automatically with the current workspace.</p>

<p>Editable Content: In structures (struct), cells (cell), and tables (table), only scalar elements can be edited.</p>

<p>Nelson provides full clipboard integration with spreadsheet applications like Microsoft Excel, LibreOffice Calc, and OpenOffice Calc.</p>

<p>You can copy variables from the Variable Editor and paste them directly into these applications, and vice versa.</p>

<p>
                
            </p>

## Example

```matlab
A = [1 2 3; 4 5 6]; openvar("A");
```

## See also

[workspace](../gui/workspace.md), [filebrowser](../gui/filebrowser.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.15.0  | initial version |

## Author

Allan CORNET
