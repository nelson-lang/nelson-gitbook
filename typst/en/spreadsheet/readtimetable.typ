#import "nelson_help.typ": *

= readtimetable <spreadsheet:readtimetable>

Create timetable from file.

== Syntax

- #raw("TT = readtimetable(filename)");
- #raw("TT = readtimetable(filename, opts)");
- #raw("TT = readtimetable(..., Name, Value)");

== Input argument

/ filename: a string: filename source.
/ opts: nelson.io.text.DelimitedTextImportOptions object.
/ Name, Value: optional pairs such as RowTimes, StartTime, TimeStep, SampleRate, InputFormat, and text import options shared with readtable.

== Output argument

/ TT: a timetable.

== Description

#strong[readtimetable]; imports column-oriented delimited text data and returns a timetable.

 Row times can be selected with #strong[RowTimes]; and a variable name, supplied with #strong[RowTimes]; and a time vector, generated from #strong[StartTime]; and #strong[SampleRate];, or generated from #strong[StartTime]; and #strong[TimeStep];.

 If no row-time option is specified, the first datetime-compatible or duration-compatible variable is used as row times.

 When a file column is used as row times, that column is removed from timetable data variables. When row times are supplied or generated, all file variables remain data variables.

 Delimited text files are supported. Unsupported external formats raise an error.

 #strong[JSON files]; (#strong[.json]; extension or #strong['FileType', 'json'];) are read as with #strong[readtable];, with the same JSON name-value arguments or a #strong[nelson.io.json.JSONImportOptions]; object. The first datetime or duration variable gives the row times, unless a row-time option is specified.


== Examples

Read a file and automatically detect the first time column.

``````matlab

Time = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Time, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_auto.csv'];
writetable(T, filename);
TT = readtimetable(filename)
TT.Properties.RowTimes

``````

Select the row-time column by name.

``````matlab

Date = {'2024-01-01'; '2024-01-02'; '2024-01-03'};
Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Date, Temperature, Pressure);
filename = [tempdir(), 'readtimetable_timevariable.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'RowTimes', 'Date')
TT.Properties.VariableNames

``````

Supply row times explicitly.

``````matlab

Temperature = [12.5; 13.0; 11.75];
Pressure = [1012; 1014; 1011];
T = table(Temperature, Pressure);
filename = [tempdir(), 'readtimetable_rowtimes.csv'];
writetable(T, filename);
rowTimes = seconds([10; 20; 30]);
TT = readtimetable(filename, 'RowTimes', rowTimes)
TT.Properties.RowTimes

``````

Generate regular row times with StartTime and SampleRate.

``````matlab

Temperature = [12.5; 13.0; 11.75; 12.25];
T = table(Temperature);
filename = [tempdir(), 'readtimetable_samplerate.csv'];
writetable(T, filename);
TT = readtimetable(filename, 'StartTime', seconds(0), 'SampleRate', 0.5)
TT.Properties.RowTimes

``````

Read a JSON file as a timetable:

``````matlab
TT = timetable(datetime(2024, 1, 1) + days(0:2)', [12.5; 13; 11.75], 'VariableNames', {'Temperature'}); f = [tempdir, 'timetable_json.json']; writetimetable(TT, f, 'PrettyPrint', false); fileread(f) TT2 = readtimetable(f)
``````


== See also

#nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:writetimetable>)[writetimetable];, #nlink(<table:1_create_convert_tables.timetable>)[timetable];, #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], [JSON files: read JSON data as a timetable.],
)

// Author: Allan CORNET
