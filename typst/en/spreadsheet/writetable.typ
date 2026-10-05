#import "nelson_help.typ": *

= writetable <spreadsheet:writetable>

Write table to file.

== Syntax

- #raw("writetable(T)");
- #raw("writetable(T, filename)");
- #raw("writetable(..., Name, Value)");

== Input argument

/ T: A table to be written to a file.
/ filename: A string specifying the destination filename.

== Description

#strong[writetable(T)]; writes the table #strong[T]; to a comma-delimited text file.

 The file name is derived from the table's workspace variable name, with the #raw(".txt"); extension appended.

 If the file name cannot be derived from the table name, the default file name #raw("table.txt"); is used.

 Output formats supported:

 

- #strong[Text files:]; Each variable in #strong[T]; becomes a column, and variable names serve as column headers in the first line.
- #strong[XML files:]; Each variable in #strong[T]; becomes an XML node, with variable names as element node names. To specify the file name explicitly, use #strong[writetable(T, filename)];. The file format is determined by the file extension:

 

- #strong[.txt];, #strong[.dat];, #strong[.csv];: Delimited text files.
- #strong[.xml];: XML files. #strong[Additional options:]; Use #strong[writetable(..., Name, Value)]; for customization:

 

- #strong[WriteRowNames:]; Include row names in the output file (default: #raw("false");).
- #strong[FileType:]; Specify file format (#raw("\n          'text'\n        "); or #raw("\n          'xml'\n        ");).
- #strong[WriteVariableNames:]; Include variable names as column headings in text files (default: #raw("true");).
- #strong[WriteMode:]; Specify writing mode (#raw("\n          'overwrite'\n        "); or #raw("\n          'append'\n        ");).
- #strong[Delimiter:]; Define the field delimiter for text files (#raw("\n          ','\n        ");, #raw("\n          '\\t'\n        ");, etc.).
- #strong[QuoteStrings:]; Control how text is quoted in text files (#raw("\n          'minimal'\n        ");, #raw("\n          'all'\n        ");, or #raw("\n          'none'\n        ");).
- #strong[AttributeSuffix:]; Specify attribute suffix for XML files (default: #raw("\n          'Attribute'\n        ");).
- #strong[RowNodeName:]; Specify XML row node names (default: #raw("\n          'row'\n        ");).
- #strong[TableNodeName:]; Specify XML root node name (default: #raw("\n          'table'\n        ");). #strong[JSON files]; (#strong[.json]; extension or #strong['FileType', 'json'];): the table is written as a JSON array with one object per row; keys are the variable names.

 

- Numbers and logical values are written as JSON numbers and true or false, text, categorical, datetime and duration values as JSON strings (datetime and duration use their display format).
- Missing values (\<missing\>, NaT, \<undefined\>) are written as null. A multicolumn variable gives a JSON array per row.
- #strong[PrettyPrint];: indent the text with four spaces (default: #raw("true");).
- #strong[PreserveInfAndNaN];: write Inf and NaN values as Inf, -Inf and NaN (default: #raw("true");); with #raw("false"); they are written as null.
- #strong[WriteRowNames];: write the row names as the first value of each object, keyed by the first dimension name.
== Examples

Examples demonstrating various usages of #strong[writetable];.

``````matlab
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
``````

Write a table to a JSON file:

``````matlab
T = table([1; NaN], ["a"; missing], [true; false], 'VariableNames', {'x', 'name', 'ok'}); f = [tempdir, 'writetable_json.json']; writetable(T, f); fileread(f) writetable(T, f, 'PrettyPrint', false, 'PreserveInfAndNaN', false); fileread(f)
``````


== See also

#nlink(<table:1_create_convert_tables.table>)[table];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [Initial version.],
  [2.0.0], [JSON files: FileType json, PrettyPrint and PreserveInfAndNaN.],
)

// Author: Allan CORNET
