# nelson.io.parquet.ParquetInfo

Metadata object returned by parquetinfo.

## 📝 Syntax

- info = parquetinfo(filename)

## 📥 Input argument

- filename - a string: Parquet file to inspect.

## 📤 Output argument

- info - a <b>nelson.io.parquet.ParquetInfo</b> object.

## 📄 Description


<b>nelson.io.parquet.ParquetInfo</b> stores metadata returned by <b>parquetinfo</b>. 

Properties are <b>Filename</b>, <b>FileSize</b>, <b>NumRows</b>, <b>NumVariables</b>, <b>NumRowGroups</b>, <b>RowGroups</b>, <b>Variables</b>, <b>CreatedBy</b>, and dependent property <b>VariableNames</b>. 

<b>RowGroups</b> is a table with row group metadata. <b>Variables</b> is a structure with variable names, Parquet types, and compression information.

## 💡 Example



```matlab
filename = [tempdir(), 'doc_ParquetInfo.parquet'];
T = table(int32([1; 2; 3]), [10; 20; 30], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
info = parquetinfo(filename);
class(info)
info.Filename
info.VariableNames
```


## 🔗 See also

[parquetinfo](../parquet/parquetinfo.md), [parquetread](../parquet/parquetread.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
