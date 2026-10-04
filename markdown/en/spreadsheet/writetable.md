# writetable

Write table to file.

## 📝 Syntax

- writetable(T)
- writetable(T, filename)
- writetable(..., Name, Value)

## 📥 Input argument

- T - A table to be written to a file.
- filename - A string specifying the destination filename.

## 📄 Description

<b>writetable(T)</b> writes the table <b>T</b> to a comma-delimited text file.

The file name is derived from the table's workspace variable name, with the <code>.txt</code> extension appended.

If the file name cannot be derived from the table name, the default file name <code>table.txt</code> is used.

Output formats supported:

- <b>Text files:</b> Each variable in <b>T</b> becomes a column, and variable names serve as column headers in the first line.
- <b>XML files:</b> Each variable in <b>T</b> becomes an XML node, with variable names as element node names.

To specify the file name explicitly, use <b>writetable(T, filename)</b>. The file format is determined by the file extension:

- <b>.txt</b>, <b>.dat</b>, <b>.csv</b>: Delimited text files.
- <b>.xml</b>: XML files.

<b>Additional options:</b> Use <b>writetable(..., Name, Value)</b> for customization:

- <b>WriteRowNames:</b> Include row names in the output file (default: <code>false</code>).
- <b>FileType:</b> Specify file format (<code>
  'text'
  </code> or <code>
  'xml'
  </code>).
- <b>WriteVariableNames:</b> Include variable names as column headings in text files (default: <code>true</code>).
- <b>WriteMode:</b> Specify writing mode (<code>
  'overwrite'
  </code> or <code>
  'append'
  </code>).
- <b>Delimiter:</b> Define the field delimiter for text files (<code>
  ','
  </code>, <code>
  '\t'
  </code>, etc.).
- <b>QuoteStrings:</b> Control how text is quoted in text files (<code>
  'minimal'
  </code>, <code>
  'all'
  </code>, or <code>
  'none'
  </code>).
- <b>AttributeSuffix:</b> Specify attribute suffix for XML files (default: <code>
  'Attribute'
  </code>).
- <b>RowNodeName:</b> Specify XML row node names (default: <code>
  'row'
  </code>).
- <b>TableNodeName:</b> Specify XML root node name (default: <code>
  'table'
  </code>).

<b>JSON files</b> (<b>.json</b> extension or <b>'FileType', 'json'</b>): the table is written as a JSON array with one object per row; keys are the variable names.

- Numbers and logical values are written as JSON numbers and true or false, text, categorical, datetime and duration values as JSON strings (datetime and duration use their display format).
- Missing values (<missing>, NaT, <undefined>) are written as null. A multicolumn variable gives a JSON array per row.
- <b>PrettyPrint</b>: indent the text with four spaces (default: <code>true</code>).
- <b>PreserveInfAndNaN</b>: write Inf and NaN values as Inf, -Inf and NaN (default: <code>true</code>); with <code>false</code> they are written as null.
- <b>WriteRowNames</b>: write the row names as the first value of each object, keyed by the first dimension name.

## 💡 Examples

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

Write a table to a JSON file:

```matlab
T = table([1; NaN], ["a"; missing], [true; false], 'VariableNames', {'x', 'name', 'ok'}); f = [tempdir, 'writetable_json.json']; writetable(T, f); fileread(f) writetable(T, f, 'PrettyPrint', false, 'PreserveInfAndNaN', false); fileread(f)
```

## 🔗 See also

[table](../table/table.md).

## 🕔 History

| Version | 📄 Description                                                |
| ------- | ------------------------------------------------------------- |
| 1.10.0  | Initial version.                                              |
| 2.0.0   | JSON files: FileType json, PrettyPrint and PreserveInfAndNaN. |

<!--
## 👤 Author

Allan CORNET
-->
