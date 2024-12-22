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

  <p><b>writetable(T)</b> writes the table <b>T</b> to a comma-delimited text file.</p>
  <p>The file name is derived from the table's workspace variable name, with the <code>.txt</code> extension appended.</p>
  <p>If the file name cannot be derived from the table name, the default file name <code>table.txt</code> is used.</p>
  <p>Output formats supported:</p>
  <ul>
    <li><b>Text files:</b> Each variable in <b>T</b> becomes a column, and variable names serve as column headers in the first line.</li>
    <li><b>XML files:</b> Each variable in <b>T</b> becomes an XML node, with variable names as element node names.</li>
  </ul>
  <p>To specify the file name explicitly, use <b>writetable(T, filename)</b>. The file format is determined by the file extension:</p>
  <ul>
    <li><b>.txt</b>, <b>.dat</b>, <b>.csv</b>: Delimited text files.</li>
    <li><b>.xml</b>: XML files.</li>
  </ul>
  <p><b>Additional options:</b> Use <b>writetable(..., Name, Value)</b> for customization:</p>
  <ul>
    <li><b>WriteRowNames:</b> Include row names in the output file (default: <code>false</code>).</li>
    <li><b>FileType:</b> Specify file format (<code>'text'</code> or <code>'xml'</code>).</li>
    <li><b>WriteVariableNames:</b> Include variable names as column headings in text files (default: <code>true</code>).</li>
    <li><b>WriteMode:</b> Specify writing mode (<code>'overwrite'</code> or <code>'append'</code>).</li>
    <li><b>Delimiter:</b> Define the field delimiter for text files (<code>','</code>, <code>'\t'</code>, etc.).</li>
    <li><b>QuoteStrings:</b> Control how text is quoted in text files (<code>'minimal'</code>, <code>'all'</code>, or <code>'none'</code>).</li>
    <li><b>AttributeSuffix:</b> Specify attribute suffix for XML files (default: <code>'Attribute'</code>).</li>
    <li><b>RowNodeName:</b> Specify XML row node names (default: <code>'row'</code>).</li>
    <li><b>TableNodeName:</b> Specify XML root node name (default: <code>'table'</code>).</li>
  </ul>

## Example

Examples demonstrating various usages of

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
