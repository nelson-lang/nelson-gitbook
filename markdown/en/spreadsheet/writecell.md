# writecell

Write a cell to a file.

## Syntax

- writecell(C)
- writecell(C, filename)
- writecell(..., Name, Value)

## Input argument

- C - an cell array.
- filename - a string: filename destination.
- Name, Value - Name-Value Arguments

## Description

<p>
            writecell writes an cell array to an CSV format file.</p>

<p>
                writecell does not support sparse matrices.</p>

<p>
                    writecell outputs numeric data in the long G format.</p>

<p></p>

<p>Available Name-Value Arguments</p>

<p></p>

<p>Name-value pairs must follow all other arguments.</p>

<p>The order of name-value pairs doesn't matter</p>

<p>Delimiter and QuoteStrings options only apply to delimited text files.</p>

<p></p>

<p>
                        FileType: Specifies the type of output file</p>

<p>Syntax: 'FileType','text'
                    </p>

<p>Supports delimited text files (.txt, .dat, .csv)</p>

<p></p>

<p>
                        WriteMode: Controls how data is written to the file</p>

<p>Syntax: 'WriteMode', mode
                    </p>

<p>Options:</p>

<p>'overwrite' (default) - Creates new file or replaces existing content</p>

<p>'append' - Adds data to end of existing file</p>

<p>If the target file doesn't exist, a new file will be created regardless of mode.</p>

<p></p>

<p>
                        Delimiter: Defines the character used to separate fields</p>

<p>Syntax: 'Delimiter', delimiter
                    </p>

<p>Available Delimiters: Only applicable for delimited text files.</p>

<p></p>

<p>
                        QuoteStrings: Controls text quoting behavior (Only applicable for delimited text files).</p>

<p>
                            'QuoteStrings', option
                        </p>

<p>with options
                    </p>

<p>
                        'minimal' (default) Quotes only text containing delimiters, line endings, or quotes.</p>

<p>
                            'all' Quotes all text variables.</p>

<p>
                                'none' Uses no quotes.</p>

## Example

```matlab
C = {'ID', 'Product', 'Price'; 1, 'Laptop', 799.99; 2, 'Phone', 699.49; 3, 'Tablet', 499.00};
filename = [tempdir(), 'writecell_example.csv'];
writecell(C, filename);
R = fileread(filename)

```

## See also

[readcell](../spreadsheet/readcell.md), [csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
