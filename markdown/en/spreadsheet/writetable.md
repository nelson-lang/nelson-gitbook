# writetable

Write table to file.

## Syntax

- writetable(T)
- writetable(T, filename)
- writetable(..., Name, Value)

## Input argument

- T - A table to be written to a file.
- filename - A string specifying the destination filename.

## Description

<p>
            <b>writetable(T)</b> writes the table <b>T</b> to a comma-delimited text file.</p>
<p>The file name is derived from the table's workspace variable name, with the .txt extension appended.</p>
<p>If the file name cannot be derived from the table name, the default file name table.txt is used.</p>
<p>Output formats supported:</p>
Text files: Each variable in T becomes a column, and variable names serve as column headers in the first line. XML files: Each variable in T becomes an XML node, with variable names as element node names.<p>To specify the file name explicitly, use <b>writetable(T, filename)</b>. The file format is determined by the file extension:</p>
.txt, .dat, .csv: Delimited text files. .xml: XML files.<p>
                                <b>Additional options:</b> Use <b>writetable(..., Name, Value)</b> for customization:</p>
WriteRowNames: Include row names in the output file (default: false). FileType: Specify file format ('text' or 'xml'). WriteVariableNames: Include variable names as column headings in text files (default: true). WriteMode: Specify writing mode ('overwrite' or 'append'). Delimiter: Define the field delimiter for text files (',', '\t', etc.). QuoteStrings: Control how text is quoted in text files ('minimal', 'all', or 'none'). AttributeSuffix: Specify attribute suffix for XML files (default: 'Attribute'). RowNodeName: Specify XML row node names (default: 'row'). TableNodeName: Specify XML root node name (default: 'table').

## Example

Examples demonstrating various usages of writetable.

```matlab
T = table([1; 2; 3], {'A'; 'B'; 'C'}, [10.5; 20.7; 30.2], 'VariableNames', {'ID', 'Name', 'Value'});
T.Value_Attribute = {'High'; 'Medium'; 'Low'};

% Basic usage - write to text file
writetable(T)

% Write to specific CSV file with custom delimiter
writetable(T, 'data.csv', 'Delimiter', ';')

% Write to XML with custom node names
writetable(T, 'data.xml', 'RowNodeName', 'record', 'TableNodeName', 'dataset')

% Append to existing file with row names
writetable(T, 'data.txt', 'WriteMode', 'append', 'WriteRowNames', true)
```

## See also

[table](../table/table.md).

## History

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | Initial version. |

## Author

Allan CORNET
