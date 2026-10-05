# readtimetable

Create timetable from file.

## 📝 Syntax

- TT = readtimetable(filename)
- TT = readtimetable(filename, opts)
- TT = readtimetable(..., Name, Value)

## 📥 Input argument

- filename - a string: filename source.
- opts - nelson.io.text.DelimitedTextImportOptions object.
- Name, Value - optional pairs such as RowTimes, StartTime, TimeStep, SampleRate, InputFormat, and text import options shared with readtable.

## 📤 Output argument

- TT - a timetable.

## 📄 Description


<b>readtimetable</b> imports column-oriented delimited text data and returns a timetable. 

Row times can be selected with <b>RowTimes</b> and a variable name, supplied with <b>RowTimes</b> and a time vector, generated from <b>StartTime</b> and <b>SampleRate</b>, or generated from <b>StartTime</b> and <b>TimeStep</b>. 

If no row-time option is specified, the first datetime-compatible or duration-compatible variable is used as row times. 

When a file column is used as row times, that column is removed from timetable data variables. When row times are supplied or generated, all file variables remain data variables. 

Delimited text files are supported. Unsupported external formats raise an error. 

<b>JSON files</b> (<b>.json</b> extension or <b>'FileType', 'json'</b>) are read as with <b>readtable</b>, with the same JSON name-value arguments or a <b>nelson.io.json.JSONImportOptions</b> object. The first datetime or duration variable gives the row times, unless a row-time option is specified.

## 💡 Examples

Read a file and automatically detect the first time column.

```matlab

Time = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Time, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_auto.csv'];
writetable(T, filename);
TT = readtimetable(filename)
TT.Properties.RowTimes

```
Select the row-time column by name.

```matlab

Date = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Date, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_timevariable.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'RowTimes', 'Date')
TT.Properties.VariableNames

```
Supply row times explicitly.

```matlab

Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Temperature, Pressure);
filename = [tempdir(), 'readtimetable_rowtimes.csv'];
writetable(T, filename);
rowTimes = seconds([10; 20; 30]);
TT = readtimetable(filename, 'RowTimes', rowTimes)
TT.Properties.RowTimes

```
Generate regular row times with StartTime and SampleRate.

```matlab

Temperature = [12.5; 13.0; 11.75; 12.25];
T = table(Temperature);
filename = [tempdir(), 'readtimetable_samplerate.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'StartTime', seconds(0), 'SampleRate', 0.5)
TT.Properties.RowTimes

```
Read a JSON file as a timetable:

```matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
```


## 🔗 See also

[readtable](../spreadsheet/readtable.md), [writetimetable](../spreadsheet/writetimetable.md), [timetable](../table/1_create_convert_tables/timetable.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | JSON files: read JSON data as a timetable. |

<!--
## 👤 Author

Allan CORNET
-->
