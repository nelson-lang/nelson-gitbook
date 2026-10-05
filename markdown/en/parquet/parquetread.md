# parquetread

Read table data from a Parquet file.

## 📝 Syntax

- T = parquetread(filename)
- T = parquetread(filename, Name, Value)

## 📥 Input argument

- filename - a string: Parquet file to read.
- Name, Value - optional arguments specified as name-value pairs.

## 📤 Output argument

- T - a table or timetable.

## 📄 Description


<b>T = parquetread(filename)</b> reads a local Parquet file and returns its contents as a table. 

<b>T = parquetread(filename, Name, Value)</b> customizes the read operation. Supported names are <b>OutputType</b>, <b>SelectedVariableNames</b>, <b>RowTimes</b>, <b>StartTime</b>, <b>SampleRate</b>, <b>TimeStep</b>, <b>RowGroups</b>, <b>RowFilter</b>, and <b>VariableNamingRule</b>. 

<b>OutputType</b> can be <b>'table'</b> or <b>'timetable'</b>. When a timetable is requested, row times can be supplied with <b>RowTimes</b>, generated from <b>StartTime</b> and <b>SampleRate</b>, generated from <b>StartTime</b> and <b>TimeStep</b>, or taken from the first file variable. 

<b>SelectedVariableNames</b> limits the returned variables. <b>RowGroups</b> limits the row groups read from the file. <b>RowFilter</b> accepts a <b>nelson.io.RowFilter</b> object and applies it to the returned table.

## 💡 Examples



```matlab
filename = [tempdir(), 'doc_parquetread.parquet'];
T = table(int32([1; 2; 3]), [10.5; 20.5; 30.5], ["low"; "mid"; "high"], ...
  'VariableNames', {'Id', 'Value', 'Label'});
parquetwrite(filename, T);
R = parquetread(filename)
```


```matlab
filename = [tempdir(), 'doc_parquetread_selected.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], logical([true; false; true; false]), ...
  'VariableNames', {'Id', 'Value', 'Flag'});
parquetwrite(filename, T);
R = parquetread(filename, 'SelectedVariableNames', {'Id', 'Flag'})
```


```matlab
filename = [tempdir(), 'doc_parquetread_filter.parquet'];
T = table(int32([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'Id', 'Value'});
parquetwrite(filename, T);
rf = rowfilter({'Id', 'Value'});
R = parquetread(filename, 'RowFilter', rf.Value >= 30)
```


```matlab
filename = [tempdir(), 'doc_parquetread_timetable.parquet'];
T = table([100; 200; 300], 'VariableNames', {'Signal'});
parquetwrite(filename, T);
TT = parquetread(filename, 'OutputType', 'timetable', ...
  'StartTime', datetime(2026, 1, 1), 'TimeStep', seconds(5))
```


## 🔗 See also

[parquetwrite](../parquet/parquetwrite.md), [parquetinfo](../parquet/parquetinfo.md), [rowfilter](../parquet/rowfilter.md), [table](../table/1_create_convert_tables/table.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
