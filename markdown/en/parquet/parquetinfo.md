# parquetinfo

Return metadata for a Parquet file.

## 📝 Syntax

- info = parquetinfo(filename)

## 📥 Input argument

- filename - a string: Parquet file to inspect.

## 📤 Output argument

- info - a <b>nelson.io.parquet.ParquetInfo</b> object.

## 📄 Description

<b>info = parquetinfo(filename)</b> reads Parquet metadata without importing the full table data.

The returned object exposes file-level metadata such as filename, file size, number of rows, number of variables, number of row groups, row group sizes, variable names, variable types, compression, and the writer description when available.

## 💡 Example

```matlab
filename = [tempdir(), 'doc_parquetinfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T, 'RowGroupHeights', 2);
info = parquetinfo(filename);
info.NumRows
info.VariableNames
info.RowGroups
```

## 🔗 See also

[nelson.io.parquet.ParquetInfo](../parquet/class_ParquetInfo.md), [parquetread](../parquet/parquetread.md), [parquetwrite](../parquet/parquetwrite.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
