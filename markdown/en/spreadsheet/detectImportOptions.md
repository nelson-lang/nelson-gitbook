# detectImportOptions

Create import options based on file content.

## Syntax

- options = detectImportOptions(filename)

## Input argument

- filename - a string: filename source.

## Output argument

- options - DelimitedTextImportOptions object.

## Description

<p>
            options = detectImportOptions(filename) identifies a table in a file and returns an import options object.</p>

<p>You can customize this object and use it with readtable, readcell or readmatrix to control how Nelson imports data as a table, cell array, or matrix.</p>

<p>The type of the returned options object depends on the file's extension.</p>

<p></p>

<p>Properties:</p>

<p>
                Delimiter: Field delimiter characters. example: {','} </p>

<p>
                    LineEnding: End-of-line characters. example: {'\r\n'}</p>

<p>
                        CommentStyle: Style of comments. example: {'#'}</p>

<p>
                            EmptyLineRule: Procedure to handle empty lines. example: 'skip'</p>

<p>
                                VariableNamesLine: Variable names location. example: 1</p>

<p>
                                    VariableNames: Variable names. example: {'Names'  'Age'  'Height'  'Weight'}</p>

<p>
                                        RowNamesColumn:  Row names location. example: 0</p>

<p>
                                            DataLines: Data location, [l1 l2] Indicate the range of lines containing the data. l1 refers to the first line with data, while l2 refers to the last line. example: [2  Inf]</p>

## Example

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, [tempdir,'readcell_1.csv'])
options = detectImportOptions([tempdir,'readcell_1.csv'])
C1 = readcell([tempdir,'readcell_1.csv'], options)
options.DataLines = [1 Inf]
C2 = readcell([tempdir,'readcell_1.csv'], options)

```

## See also

[readcell](../spreadsheet/readcell.md), [readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
