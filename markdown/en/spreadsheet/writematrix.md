# writematrix

Write a matrix to a file.

## Syntax

- writematrix(M)
- writematrix(M, filename)
- writematrix(..., Name, Value)

## Input argument

- M - an numeric or logical matrix.
- filename - a string: filename destination.
- Name, Value - Name-Value Arguments

## Description

<p>
            <b>writematrix</b> writes an numeric matrix to an CSV format file.</p>
<p>
                <b>writematrix</b> does not support sparse matrices.</p>
<p>
                    <b>writematrix</b> outputs numeric data in the long G format.</p>
<p></p>
<p>Available Name-Value Arguments</p>
<p></p>
<p>Name-value pairs must follow all other arguments.</p>
<p>The order of name-value pairs doesn't matter</p>
<p>Delimiter and QuoteStrings options only apply to delimited text files.</p>
<p></p>
<p>
                        <b>FileType</b>: Specifies the type of output file</p>
<p>Syntax: <b>'FileType','text'</b>
                    </p>
<p>Supports delimited text files (.txt, .dat, .csv)</p>
<p></p>
<p>
                        <b>WriteMode</b>: Controls how data is written to the file</p>
<p>Syntax: <b>'WriteMode', mode</b>
                    </p>
<p>Options:</p>
<p>'overwrite' (default) - Creates new file or replaces existing content</p>
<p>'append' - Adds data to end of existing file</p>
<p>If the target file doesn't exist, a new file will be created regardless of mode.</p>
<p></p>
<p>
                        <b>Delimiter</b>: Defines the character used to separate fields</p>
<p>Syntax: <b>'Delimiter', delimiter</b>
                    </p>
<p>Available Delimiters: Only applicable for delimited text files.</p>
Specifier Alternative Description ',' 'comma' Comma (default) ' ' 'space' Space character '\t' 'tab' Tab character ';' 'semi' Semicolon '|' 'bar' Vertical bar<p></p>
<p>
                        <b>QuoteStrings</b>: Controls text quoting behavior (Only applicable for delimited text files).</p>
<p>
                            <b>'QuoteStrings', option</b>
                        </p>
<p>with <b>options</b>
                    </p>
<p>
                        <b>'minimal'</b> (default) Quotes only text containing delimiters, line endings, or quotes.</p>
<p>
                            <b>'all'</b> Quotes all text variables.</p>
<p>
                                <b>'none'</b> Uses no quotes.</p>

## Example

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'writematrix_example.csv'];
writematrix(A, filename);
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
