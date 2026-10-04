# parquetDatastore

Create a datastore for one or more Parquet files.

## 📝 Syntax

- pds = parquetDatastore(location)
- pds = parquetDatastore(location, Name, Value)

## 📥 Input argument

- location - a filename, folder name, wildcard pattern, string array, or cell array of character vectors.
- Name, Value - optional arguments specified as name-value pairs.

## 📤 Output argument

- pds - a <b>nelson.io.datastore.ParquetDatastore</b> object.

## 📄 Description

<b>pds = parquetDatastore(location)</b> creates a datastore that reads local Parquet files from the specified location.

When <b>location</b> is a folder, files ending with <b>.parquet</b> in that folder are selected. Wildcard patterns can be used to select multiple files.

Supported name-value pairs are <b>ReadSize</b>, <b>SelectedVariableNames</b>, <b>OutputType</b>, <b>RowTimes</b>, <b>RowFilter</b>, and <b>VariableNamingRule</b>.

The datastore reads one file at a time. Use <b>hasdata</b>, <b>read</b>, <b>readall</b>, <b>preview</b>, and <b>reset</b> to navigate the data.

## 💡 Examples

```matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_1.parquet'];
file2 = [folder, 'doc_parquet_ds_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
pds = parquetDatastore([folder, 'doc_parquet_ds_*.parquet']);
pds.VariableNames
T = readall(pds)
```

```matlab
folder = tempdir();
file1 = [folder, 'doc_parquet_ds_filter_1.parquet'];
file2 = [folder, 'doc_parquet_ds_filter_2.parquet'];
parquetwrite(file1, table([1; 2], [10; 20], 'VariableNames', {'Id', 'Value'}));
parquetwrite(file2, table([3; 4], [30; 40], 'VariableNames', {'Id', 'Value'}));
rf = rowfilter({'Id', 'Value'});
pds = parquetDatastore([folder, 'doc_parquet_ds_filter_*.parquet'], ...
  'SelectedVariableNames', {'Id', 'Value'}, 'RowFilter', rf.Value > 15);
T = readall(pds)
```

## 🔗 See also

[nelson.io.datastore.ParquetDatastore](../parquet/class_ParquetDatastore.md), [parquetread](../parquet/parquetread.md), [rowfilter](../parquet/rowfilter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
