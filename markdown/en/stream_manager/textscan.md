# textscan

Read formatted data from a character vector, string or file.

## 📝 Syntax

- C = textscan(chr, format)
- C = textscan(fid, format)
- C = textscan(\_\_, Name, Value)
- [C, position] = textscan(\_\_)

## 📥 Input argument

- chr - a character vector or string scalar to read from.
- fid - a file identifier returned by fopen. Data is read from the current position to the end of the file.
- format - a character vector describing the conversion specifiers applied to each field.
- Name, Value - one or more name/value option pairs.

## 📤 Output argument

- C - a cell array with one cell per conversion specifier.
- position - the number of characters read when scanning stopped.

## 📄 Description

<b>textscan</b> reads formatted data and returns a cell array <b>C</b>. Each cell holds one output column collected across all repetitions of the format string, since the format is cycled over the whole input.

Numeric conversion specifiers produce column vectors, while <b>%s</b>, <b>%q</b> and <b>%[...]</b> produce cell arrays of character vectors.

Supported conversion specifiers:

<b>%d</b> signed integer (int32), <b>%u</b> unsigned integer (uint32), <b>%f</b> floating point (double), <b>%s</b> whitespace or delimiter separated text, <b>%q</b> optionally double quoted text, <b>%c</b> a fixed number of characters, <b>%[...]</b> and <b>%[^...]</b> character set scanning.

A field width may be given (for example <b>%5d</b> or <b>%3s</b>). A conversion prefixed with <b>\*</b> (for example <b>%\*d</b>) is read but not stored. A size suffix selects the numeric class (<b>%d8</b>, <b>%d16</b>, <b>%d32</b>, <b>%d64</b>, <b>%u8</b> and <b>%f32</b>). Literal text between specifiers must be matched in the input.

Supported name/value options:

<b>Delimiter</b> a character vector, or a cell array of character vectors, used to separate fields.

<b>HeaderLines</b> the number of leading lines to skip.

<b>CollectOutput</b> when true, consecutive columns of the same class are concatenated into a single array.

<b>EmptyValue</b> the numeric value used for empty numeric fields.

<b>Whitespace</b> the characters treated as whitespace.

<b>MultipleDelimsAsOne</b> when true, consecutive delimiters are treated as a single delimiter.

<b>CommentStyle</b> a comment marker, or a start and end pair, whose text is ignored.

<b>TreatAsEmpty</b> text values that are treated as empty numeric fields.

<b>EndOfLine</b> accepted for compatibility; end of line characters are always treated as whitespace separators.

## 💡 Examples

```matlab
C = textscan('1 2 3', '%d')
```

```matlab
C = textscan('a,b,c', '%s', 'Delimiter', ',');
C{1}
```

```matlab
C = textscan('name:42', '%[^:]:%d')
```

## 🔗 See also

[sscanf](../stream_manager/sscanf.md), [fscanf](../stream_manager/fscanf.md), [fopen](../stream_manager/fopen.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
