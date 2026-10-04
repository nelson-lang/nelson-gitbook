# parquetwrite

Write a table to a Parquet file.

## 📝 Syntax

- parquetwrite(filename, T)
- parquetwrite(filename, T, Name, Value)

## 📥 Input argument

- filename - a string: destination Parquet file.
- T - a table or timetable.
- Name, Value - optional arguments specified as name-value pairs.

## 📄 Description

<b>parquetwrite(filename, T)</b> writes the table or timetable <b>T</b> to a local Parquet file.

Supported variable types include logical values, integer types, single and double precision floating point values, text, datetime values, duration values, nested tables, and homogeneous primitive cell vector columns.

Unsupported variables such as complex arrays, sparse arrays, unsupported class objects, and unsupported nested cell shapes generate an error.

Supported name-value pairs are <b>VariableCompression</b>, <b>VariableEncoding</b>, <b>VariableNames</b>, <b>RowGroupHeights</b>, and <b>Version</b>.

<b>VariableCompression</b> accepts values such as <b>'snappy'</b>, <b>'gzip'</b>, <b>'brotli'</b>, <b>'zstd'</b>, <b>'lz4'</b>, and <b>'uncompressed'</b>. <b>VariableEncoding</b> accepts <b>'auto'</b>, <b>'plain'</b>, or <b>'dictionary'</b>. <b>Version</b> accepts <b>'1.0'</b>, <b>'2.4'</b>, or <b>'2.6'</b>.

## 💡 Examples

```matlab
filename = [tempdir(), 'doc_parquetwrite.parquet'];
T = table(int32([1; 2; 3]), single([1.5; 2.5; 3.5]), logical([true; false; true]), ...
  ["A"; "B"; "C"], 'VariableNames', {'Id', 'Value', 'Flag', 'Name'});
parquetwrite(filename, T);
R = parquetread(filename)
```

```matlab
filename = [tempdir(), 'doc_parquetwrite_rowgroups.parquet'];
T = table((1:6)', [10; 20; 30; 40; 50; 60], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2, 'VariableCompression', 'gzip');
info = parquetinfo(filename);
info.NumRowGroups
```

```matlab
filename = [tempdir(), 'doc_parquetwrite_nested.parquet'];
Nested = table(int16([10; 20; 30]), [1.5; 2.5; 3.5], 'VariableNames', {'Code', 'Value'});
T = table((1:3)', Nested, 'VariableNames', {'Id', 'Nested'});
parquetwrite(filename, T);
R = parquetread(filename);
R.Nested
```

## 🔗 See also

[parquetread](../parquet/parquetread.md), [parquetinfo](../parquet/parquetinfo.md), [table](../table/table.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
