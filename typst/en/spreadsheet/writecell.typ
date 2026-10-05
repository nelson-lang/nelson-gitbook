#import "nelson_help.typ": *

= writecell <spreadsheet:writecell>

Write a cell to a file.

== Syntax

- #raw("writecell(C)");
- #raw("writecell(C, filename)");
- #raw("writecell(..., Name, Value)");

== Input argument

/ C: an cell array.
/ filename: a string: filename destination.
/ Name, Value: Name-Value Arguments

== Description

#strong[writecell]; writes an cell array to an CSV format file.

 #strong[writecell]; does not support sparse matrices.

 #strong[writecell]; outputs numeric data in the long G format.

 

 Available Name-Value Arguments

 

 Name-value pairs must follow all other arguments.

 The order of name-value pairs doesn't matter

 Delimiter and QuoteStrings options only apply to delimited text files.

 

 #strong[FileType];: Specifies the type of output file

 Syntax: #strong['FileType','text'];

 Supports delimited text files (.txt, .dat, .csv)

 

 #strong[WriteMode];: Controls how data is written to the file

 Syntax: #strong['WriteMode', mode];

 Options:

 'overwrite' (default) - Creates new file or replaces existing content

 'append' - Adds data to end of existing file

 If the target file doesn't exist, a new file will be created regardless of mode.

 

 #strong[Delimiter];: Defines the character used to separate fields

 Syntax: #strong['Delimiter', delimiter];

 Available Delimiters: Only applicable for delimited text files.

 

#table(
  columns: 3,
  table.header([Specifier], [Alternative], [Description], ),
  [#raw("\n              ','\n            ");], [#raw("\n              'comma'\n            ");], [Comma (default)], 
  [#raw("\n              '\n              '\n            ");], [#raw("\n              'space'\n            ");], [Space character], 
  [#raw("\n              '\\t'\n            ");], [#raw("\n              'tab'\n            ");], [Tab character], 
  [#raw("\n              ';'\n            ");], [#raw("\n              'semi'\n            ");], [Semicolon], 
  [#raw("\n              '|'\n            ");], [#raw("\n              'bar'\n            ");], [Vertical bar], 
)
 

 #strong[QuoteStrings];: Controls text quoting behavior (Only applicable for delimited text files).

 #strong['QuoteStrings', option];

 with #strong[options];

 #strong['minimal']; (default) Quotes only text containing delimiters, line endings, or quotes.

 #strong['all']; Quotes all text variables.

 #strong['none']; Uses no quotes.


== Example

``````matlab
C = {'ID', 'Product', 'Price'; 1, 'Laptop', 799.99; 2, 'Phone', 699.49; 3, 'Tablet', 499.00};
filename = [tempdir(), 'writecell_example.csv'];
writecell(C, filename);
R = fileread(filename)

``````


== See also

#nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:csvwrite>)[csvwrite];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
