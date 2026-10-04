# nelson.io.datastore.ParquetDatastore

Datastore object for Parquet files.

## 📝 Syntax

- pds = parquetDatastore(location)
- [T, info] = read(pds)
- T = readall(pds)
- T = preview(pds)
- tf = hasdata(pds)
- reset(pds)

## 📥 Input argument

- location - a filename, folder name, wildcard pattern, string array, or cell array of character vectors.
- pds - a <b>nelson.io.datastore.ParquetDatastore</b> object.

## 📤 Output argument

- T - a table or timetable.
- info - a structure containing the current filename and file index.
- tf - a logical value.

## 📄 Description

<b>nelson.io.datastore.ParquetDatastore</b> is created by <b>parquetDatastore</b>.

Properties are <b>Files</b>, <b>ReadSize</b>, <b>SelectedVariableNames</b>, <b>OutputType</b>, <b>RowTimes</b>, <b>RowFilter</b>, <b>VariableNamingRule</b>, and dependent property <b>VariableNames</b>.

<b>read</b> returns the next file as a table and advances the datastore. <b>readall</b> concatenates all remaining files after resetting the datastore. <b>preview</b> reads the first rows of the first file. <b>hasdata</b> indicates whether more files can be read. <b>reset</b> moves the datastore back to the first file.

## 💡 Example

```matlab
folder = tempdir();
file1 = [folder, 'doc_ParquetDatastore_1.parquet'];
file2 = [folder, 'doc_ParquetDatastore_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_ParquetDatastore_*.parquet']);
hasdata(pds)
[T1, readInfo] = read(pds)
reset(pds);
T = readall(pds)
```

## 🔗 See also

[parquetDatastore](../parquet/parquetDatastore.md), [parquetread](../parquet/parquetread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
