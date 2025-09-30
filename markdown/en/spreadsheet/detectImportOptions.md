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
            <b>options = detectImportOptions(filename)</b> identifies a table in a file and returns an import <b>options</b> object.</p>
<p>You can customize this object and use it with <b>readtable</b>, <b>readcell</b> or <b>readmatrix</b> to control how Nelson imports data as a table, cell array, or matrix.</p>
<p>The type of the returned options object depends on the file's extension.</p>
<p></p>
<p>Properties:</p>
<p>
                <b>Delimiter</b>: Field delimiter characters. example: {','} </p>
<p>
                    <b>LineEnding</b>: End-of-line characters. example: {'\r\n'}</p>
<p>
                        <b>CommentStyle</b>: Style of comments. example: {'#'}</p>
<p>
                            <b>EmptyLineRule</b>: Procedure to handle empty lines. example: 'skip'</p>
<p>
                                <b>VariableNamesLine</b>: Variable names location. example: 1</p>
<p>
                                    <b>VariableNames</b>: Variable names. example: {'Names'  'Age'  'Height'  'Weight'}</p>
<p>
                                        <b>RowNamesColumn</b>:  Row names location. example: 0</p>
<p>
                                            <b>DataLines</b>: Data location, <b>[l1 l2]</b> Indicate the range of lines containing the data. <b>l1</b> refers to the first line with data, while <b>l2</b> refers to the last line. example: [2  Inf]</p>

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
